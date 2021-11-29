let counterContainer = document.querySelector(".website-counter");

fetch('https://api.dmandyna.co.uk/counter')
    .then(response => response.json())
    .then(data => {
        counterContainer.innerHTML = "Visitor counter: " + data.currentCounter;
    })