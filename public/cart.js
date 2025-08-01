document.addEventListener("DOMContentLoaded", function () {
      const carting = document.getElementById("toggleCart");
  const cartCount = document.getElementById("cart-count");
  const cart = document.querySelector(".cartTab");
  const closebtn = document.getElementById("close-cart");
  const addToCart = document.querySelector(".add-to-cart-btn");
  const cartItemsContainer = document.querySelector(".cart-items");

  // Open/Close cart UI
  if (carting) {
    carting.addEventListener("click", (event) => {
      event.stopPropagation();
      cart.classList.toggle("open");
    });
  }

  if (closebtn) {
    closebtn.addEventListener("click", (event) => {
      cart.classList.remove("open");
    });
  }

  document.addEventListener("click", () => {
    if (cart) cart.classList.remove("open");
  });

  if (cart) {
    cart.addEventListener("click", (event) => {
      event.stopPropagation();
    });
  }

  // ADD TO CART BUTTON HANDLER
  if (addToCart) {
    addToCart.addEventListener("click", async () => {
      const productId = addToCart.dataset.id;
      const category = addToCart.dataset.category;

      try {
        const response = await fetch("/cart/add", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ product_id: productId, category: category })
        });

        if (response.ok) {
          updateCart();
          updateCartCount();
          const data = await response.json();
          document.getElementById("responseMsg").textContent = data.message;
        } else {
          const data = await response.json();
          document.getElementById("responseMsg").textContent = data.message;
        }
      } catch (err) {
        console.error("Add to cart failed:", err);
      }
    });
  }

  // QUANTITY CHANGE (+ / -)
  if (cartItemsContainer) {
    cartItemsContainer.addEventListener("click", async (e) => {
      const inc = e.target.classList.contains("increase");
      const dec = e.target.classList.contains("decrease");

      if (inc || dec) {
        const productId = e.target.dataset.productId;
        const change = inc ? 1 : -1;

        try {
          const response = await fetch("/cart/quantity", {
            method: "PATCH",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ product_id: productId, change: change })
          });

          if (response.ok) {
            updateCart();
            updateCartCount();
          }
        } catch (error) {
          console.error("Quantity change failed:", error);
        }
      }
    });
  }

  // UPDATE CART UI
  async function updateCart() {
    try {
      const response = await fetch("/cart/items");
      const items = await response.json();

      if (!cartItemsContainer) return;

      cartItemsContainer.innerHTML = "";
      let totalCount = 0;

      items.forEach(item => {
        totalCount += item.quantity;

        const div = document.createElement("div");
        div.classList.add("cart-item");
        div.innerHTML = `
          <div class="cart-product">
            <span>${item.name}</span>
          </div>
          <div class="price">
            <span>${item.price}</span>
          </div>
          <div class="qty-controls">
            <button class="decrease" data-product-id="${item.product_id}">-</button>
            <span>${item.quantity}</span>
            <button class="increase" data-product-id="${item.product_id}">+</button>
          </div>
        `;
        cartItemsContainer.appendChild(div);
      });

      if (cartCount) cartCount.textContent = totalCount;
    } catch (error) {
      console.error("Cart fetch failed:", error);
    }
  }

  // UPDATE CART COUNT ONLY
  async function updateCartCount() {
    try {
      const res = await fetch("/cart/items");
      const items = await res.json();
      let total = 0;
      items.forEach(item => total += item.quantity);
      if (cartCount) cartCount.textContent = total;
    } catch (err) {
      console.error("Failed to update cart count", err);
    }
  }

  // INIT
  if (cartItemsContainer) {
    updateCart();
  }
  updateCartCount();
});