// this does same as task 3 but this time it has a button to change the colour to blue
//nb. it is just to change to red it doesn't change back to blue 

// set a variable to be accessed by the id of a dom object
const myButton= document.getElementById('myButton');

// function to activate when the object is clicked
myButton.addEventListener('click', () => {
      myHeading.style.color = 'red';                           
});
