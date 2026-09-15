
const year = document.getElementById("year");

year.textContent = new Date().getFullYear();



const navLinks = document.querySelectorAll('a[href^="#"]');

navLinks.forEach(function(link) {

    link.addEventListener("click", function(event) {

        const targetID = this.getAttribute("href");

        
        if (targetID === "#") {
            return;
        }

        const targetSection = document.querySelector(targetID);

        if (targetSection) {

            event.preventDefault();

            targetSection.scrollIntoView({
                behavior: "smooth"
            });

        }

    });

});



const projectCards = document.querySelectorAll(".project-card");

projectCards.forEach(function(card) {

    card.addEventListener("click", function() {

        console.log("Project selected: " + this.querySelector("h3").textContent);

    });

});



window.addEventListener("load", function() {

    console.log("Harsh Lulla's Portfolio Loaded Successfully!");

});