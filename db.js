import dotenv from "dotenv";
dotenv.config();
import pg from "pg";

const pool = new pg.Client({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});
pool.connect();

export { pool };