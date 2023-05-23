var icon = document.getElementById("icon");
        if (localStorage.getItem('theme') === 'dark-mode') {
            icon.src = "dark.jpg";
            document.body.classList.toggle("dark-mode");
        }
        else if (localStorage.getItem('theme') === 'light-mode' && document.body.classList.contains("dark-mode")) {
            icon.src = "light.png";
            document.body.classList.toggle("dark-mode");
        }
        icon.onclick = function () {
            document.body.classList.toggle("dark-mode");

            if (document.body.classList.contains("dark-mode")) {
                icon.src = "dark.jpg";
                localStorage.setItem('theme', 'dark-mode');
            }
            else {
                icon.src = "light.png";
                localStorage.setItem('theme', 'light-mode');
            }
        }