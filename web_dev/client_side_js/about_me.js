function addBackgroundColor(event){
    event.target.style.background = 'yellow';
}

function removeBackgroundColor(event){
    event.target.style.background = 'white';
}

var paragraph = document.getElementsByTagName('p');

paragraph[0].addEventListener("mouseover", addBackgroundColor);

paragraph[0].addEventListener("mouseout", removeBackgroundColor);
