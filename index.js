import express from 'express';
import session from 'express-session';
import pgSession from "connect-pg-simple";
import {fileURLToPath} from 'url';
import path from 'path';
import { dirname } from 'path';
import { pool } from './db.js';


const app = express();
const PORT = process.env.PORT || 3000;
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


app.set("view engine", "ejs");
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));
app.use(express.json());




const PGSession = pgSession(session);

app.use(session({
  store: new PGSession({
    pool: pool,        
    tableName: 'user_sessions',
  }),
  secret: "pet-store-secret",
  resave: false,
  saveUninitialized: false,
  cookie: {
    maxAge: 1000 * 60 * 60 * 24,
    sameSite: "lax",
    secure: process.env.NODE_ENV === "production"
  }
}));


app.get("/", async(req,res)=>{
    try {
        const accessoryResult = await pool.query('SELECT * FROM accessory');
        const bsResult = await pool.query('SELECT * FROM bestseller');
        const petResult = await pool.query('SELECT * FROM pets');
        const feedResult = await pool.query('SELECT * FROM feeds');
        const lsResult = await pool.query('SELECT * FROM limitedStocks');
        const lsProducts = lsResult.rows;
        const accessoryProducts = accessoryResult.rows;
        const bsProducts = bsResult.rows;
        const petProducts = petResult.rows;
        const feedProducts = feedResult.rows;
        res.render("index", {
            video1: '/images/dog-video.mp4',
            video2: '/images/cat-video.mp4',
            accessoryProducts,
            bsProducts,
            petProducts,
            feedProducts,
            lsProducts
        });
    } catch (error) {
        console.error("Error fetching products:", error);
        res.status(500).send("Internal Server Error");
    }
});
app.get("/product/:type/:id", async (req, res) => {
    const { type, id } = req.params;
    const tableMap = {
        accessory: { table: "accessory", key: "accessory" },
        pet: { table: "pets", key: "pet" },
        feed: { table: "feeds", key: "feed" },
        bestseller: { table: "bestseller", key: "bestseller" },
        limitedstocks: {table: "limitedstocks", key: "limitedstocks"}
    };
    const selected = tableMap[type];
    if (!selected) {
        return res.status(404).send("Invalid product type.");
    }
    try {
        const result = await pool.query(
            `SELECT * FROM ${selected.table} WHERE id = $1`,
            [id]
        );
        const product = result.rows[0];

        if (!product) {
            return res.status(404).send("Product not found.");
        }
        const templateData = {
            accessory: null,
            pet: null,
            feed: null,
            bestseller: null,
            limitedstocks: null
        };
        templateData[selected.key] = product;
        res.render("product", templateData);
    } catch (err) {
        console.error(err);
        res.status(500).send("Server error");
    }
});
app.get("/accessories", async(req,res)=>{
    const result = await pool.query('SELECT * FROM accessory');
    const accessoryProducts = result.rows;
    console.log(accessoryProducts);
    res.render("accessories", {accessoryProducts});
});
app.get("/pets", async(req,res)=>{
    const result = await pool.query('SELECT * FROM pets');
    const petProducts = result.rows;
    console.log(petProducts);
    res.render("pets", {petProducts});
});
app.get("/feeds", async(req,res)=>{
    const result = await pool.query('SELECT * FROM feeds');
    const feedProducts = result.rows;
    console.log(feedProducts);
    res.render("feeds", {feedProducts});
});
app.get("/shop", async(req,res)=>{
    try {
        const accessoryResult = await pool.query('SELECT * FROM accessory');
        const bsResult = await pool.query('SELECT * FROM bestseller');
        const petResult = await pool.query('SELECT * FROM pets');
        const feedResult = await pool.query('SELECT * FROM feeds');
        const lsResult = await pool.query('SELECT * FROM limitedstocks');
        const lsProducts = lsResult.rows;
        const accessoryProducts = accessoryResult.rows;
        const bsProducts = bsResult.rows;
        const petProducts = petResult.rows;
        const feedProducts = feedResult.rows;
        res.render("shop", {
            accessoryProducts,
            bsProducts,
            petProducts,
            feedProducts,
            lsProducts
        });
    } catch (error) {
        console.error("Error fetching products:", error);
        res.status(500).send("Internal Server Error");
    }
});
app.get("/blog", (req, res) => {
  res.render("blog");
});
app.post("/cart/add", async (req, res) => {
  const { product_id, category } = req.body;

  let query;
  if (category === "accessory") {
    query = "SELECT accessory_name AS name, accessory_prie AS price FROM accessory WHERE id = $1";
  } else if (category === "pets") {
    query = "SELECT pet_name AS name, pet_price AS price FROM pets WHERE id = $1";
  } else if (category === "feeds") {
    query = "SELECT feed_name AS name, feed_price AS price FROM feeds WHERE id = $1";
  } else if (category === "limitedstocks") {
    query = "SELECT name AS name, price AS price FROM limitedstocks WHERE id = $1";
  } else if (category === "bestseller") {
    query = "SELECT bs_name AS name, bs_price AS price FROM bestseller WHERE id = $1";
  } else {
    return res.status(400).json({ error: "Invalid category" });
  }

  try {
    const result = await pool.query(query, [product_id]);
    if (result.rows.length === 0) return res.status(404).json({ error: "Product not found" });

    const { name, price } = result.rows[0];

    await pool.query(
      `INSERT INTO cart (product_id, name, price, quantity)
       VALUES ($1, $2, $3, 1)
       ON CONFLICT (product_id) DO UPDATE
       SET quantity = cart.quantity + 1`,
      [product_id, name, price]
    );

    res.status(200).json({ message: "Added to cart" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
});

app.get("/cart/items", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM cart");
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: "Error fetching cart" });
  }
});

app.patch("/cart/quantity", async (req, res) => {
  const { product_id, change } = req.body;

  try {
    const result = await pool.query("SELECT quantity FROM cart WHERE product_id = $1", [product_id]);
    if (result.rows.length === 0) return res.status(404).json({ error: "Item not found" });

    const currentQty = result.rows[0].quantity;

    if (currentQty + change <= 0) {
      await pool.query("DELETE FROM cart WHERE product_id = $1", [product_id]);
    } else {
      await pool.query("UPDATE cart SET quantity = $1 WHERE product_id = $2", [currentQty + change, product_id]);
    }

    res.sendStatus(200);
  } catch (err) {
    res.status(500).json({ error: "Error updating quantity" });
  }
});

app.get("/search", async (req, res) => {
  const { q } = req.query;
  if (!q) return res.redirect("/");

  try {
    const query = `%${q.toLowerCase()}%`;
    const tables = [
      { name: "accessory", key: "accessory_name", url: "accessory_url", price: "accessory_prie" },
      { name: "pets", key: "pet_name", url: "pet_url", price: "pet_price" },
      { name: "feeds", key: "feed_name", url: "feed_url", price: "feed_price" },
      { name: "bestseller", key: "bs_name", url: "bs_url", price: "bs_price" },
      { name: "limitedstocks", key: "name", url: "url", price: "price" }
    ];

    const results = [];

    for (const table of tables) {
      const result = await pool.query(
        `SELECT id, ${table.key} AS name, ${table.price} AS price, ${table.url} AS image FROM ${table.name} WHERE LOWER(${table.key}) LIKE $1`,
        [query]
      );
      result.rows.forEach(row => {
        row.category = table.name; 
      });
      results.push(...result.rows);
    }

    res.render("search", { query: q, results });
  } catch (err) {
    console.error(err);
    res.status(500).send("Server error");
  }
});
app.get("/admin/add-product", (req, res) => {
  res.render("adminAddProduct"); 
});
app.post("/admin/add-product", async (req, res) => {
  const { category, name, price, image_url } = req.body;

  let query = "";
  let values = [];

  switch (category) {
    case "accessory":
      query = `INSERT INTO accessory (accessory_name, accessory_prie, accessory_url) VALUES ($1, $2, $3)`;
      values = [name, price, image_url];
      break;

    case "feeds":
      query = `INSERT INTO feeds (feed_name, feed_price, feed_url) VALUES ($1, $2, $3)`;
      values = [name, price, image_url];
      break;

    case "pets":
      query = `INSERT INTO pets (pet_name, pet_price, pet_url) VALUES ($1, $2, $3)`;
      values = [name, price, image_url];
      break;

    case "bestseller":
      query = `INSERT INTO bestseller (bs_name, bs_price, bs_url) VALUES ($1, $2, $3)`;
      values = [name, price, image_url];
      break;

    case "limitedstocks":
      query = `INSERT INTO limitedstocks (name, price, url) VALUES ($1, $2, $3)`;
      values = [name, price, image_url];
      break;

    default:
      return res.status(400).send(" Invalid category");
  }

  try {
    await pool.query(query, values);
    res.send("Product added successfully!");
  } catch (err) {
    console.error(err);
    res.status(500).send(" Failed to add product");
  }
});
app.patch("/admin/stock/:category/:name/:status", async (req, res) => {
  const { category, name, status } = req.params;
  const table = category;
  const nameColumns = {
  accessory: "accessory_name",
  pets: "pet_name",
  feeds: "feed_name",
  bestseller: "bs_name",
  limitedstocks: "name"
  };
  const column = nameColumns[category];

  if (!table || !column) return res.status(400).json({ message: "Invalid category" });

  const inStock = status === "in" ? true : status === "out" ? false : null;
  if (inStock === null) return res.status(400).json({ message: "Invalid stock status" });

  try {
    const result = await pool.query(
      `UPDATE ${table} SET in_stock = $1 WHERE LOWER(${column}) = LOWER($2)`,
      [inStock, name]
    );

    if (result.rowCount === 0) {
      return res.status(404).json({ message: "Product not found" });
    }

    const msg = inStock ? "restocked" : "marked as out of stock";
    res.json({ message: `${name} successfully ${msg}.` });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
});
app.get("/contact", (req,res)=>{
  res.render("contact");
});





app.listen(PORT, () => {
    console.log(`Server is running at port ${PORT}`);
});
