document.addEventListener("DOMContentLoaded", function () {
  // Navbar toggle logic
  const menuToggle = document.getElementById("menuToggle");
  const mainMenu = document.getElementById("mainMenu");

  menuToggle.addEventListener("click", (event) => {
    event.stopPropagation();
    mainMenu.classList.toggle("show");
  });
  document.addEventListener("click", () => {
    mainMenu.classList.remove("show");
  });
  mainMenu.addEventListener("click", (event) => {
    event.stopPropagation();
  });

  // Video autoplay logic
  const videoPlayer = document.getElementById("videoPlayer");
  if (videoPlayer) {
    let currentVideo = 0;
    function playNextVideo() {
      videoPlayer.style.opacity = 0;
      setTimeout(() => {
        currentVideo = (currentVideo + 1) % videoList.length;
        videoPlayer.src = videoList[currentVideo];
        videoPlayer.load();
        videoPlayer.play();
      }, 1000);
    }
    videoPlayer.addEventListener("playing", () => {
      videoPlayer.style.opacity = 1;
    });
    videoPlayer.src = videoList[currentVideo];
    videoPlayer.load();
    videoPlayer.play();
    videoPlayer.onended = playNextVideo;
  };


  const searchIcon = document.querySelector(".search .menu-icon");
  const searchBar = document.querySelector(".searchBar");

  searchIcon.addEventListener("click", () => {
    const query = searchBar.value.trim();
    if (query) {
      window.location.href = `/search?q=${encodeURIComponent(query)}`;
    }
  });
  searchBar.addEventListener("keypress", (e) => {
    if (e.key === "Enter") {
      searchIcon.click();
    }
  });

  document.getElementById("stockForm").addEventListener("submit", async function (e) {
  e.preventDefault();

  const category = document.getElementById("category").value;
  const name = document.getElementById("productName").value;
  const status = document.getElementById("status").value;

  if (!category || !name || !status) return alert("Please fill all fields.");

  try {
    const res = await fetch(`/admin/stock/${category}/${name}/${status}`, {
      method: "PATCH"
    });

    const data = await res.json();
    document.getElementById("responseMsg").textContent = data.message;
    } catch (err) {
      document.getElementById("responseMsg").textContent = "Something went wrong.";
      console.error(err);
    }
  });

});



