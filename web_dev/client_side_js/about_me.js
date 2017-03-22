function addBackgroundColor(event){
    event.target.style.background = 'yellow';
}

function removeBackgroundColor(event){
    event.target.style.background = 'white';
}

var paragraph = document.getElementsByTagName('p');

//paragraph[0].addEventListener("mouseover", addBackgroundColor);

//paragraph[0].addEventListener("mouseout", removeBackgroundColor);


for (var i = 0; i < paragraph.length; i++) {
	paragraph[i].addEventListener("mouseover", addBackgroundColor);
	paragraph[i].addEventListener("mouseout", removeBackgroundColor);
}


//Display a message for button click on the console page.

function buttonClick(event) {
    if (event.target.nodeName == "button") {
      console.log("Clicked", event.target.textContent);
    }
}
var button = document.getElementsByTagName("button");
for (var i = 0; i <  button.length; i++) {
	button[i].addEventListener("click", buttonClick);
}

// Inorder to dispaly the current time and date when the date button in footer is clicked.
function displayDate() {
    document.getElementById("display").innerHTML = Date();
}
var date_button = document.getElementById("date");
date_button.addEventListener("click", displayDate)

// create new elments
var newHeading = document.createElement('h1');
var newParagraph = document.createElement('p');

// create text nodes for new elements
var h1Text= document.createTextNode("Passionate Front-end web developer.");
var paraText= document.createTextNode("A small paragraph about me.");

// attach new text nodes to new elements
newHeading.appendChild(h1Text);
newParagraph.appendChild(paraText);

// elements are now created and ready to be added to the DOM.

//How to hide the data and provide an option to show less or more data on the screen.

function showToggleFunction() {
  var x = document.getElementsByTagName('table');
  console.log(x);
  for (i = 0; i < x.length; i++) {
    if (x[i].style.display === 'none') {
        x[i].style.display = 'block';
    } else {
        x[i].style.display = 'none';
    }
  }
}

var gallery = document.getElementById("gallery");
gallery.addEventListener("click", showToggleFunction);