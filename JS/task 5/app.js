// this does same as task 3 but this time it has a button to change the colour to blue
//nb. it is just to change to red it doesn't change back to blue 

// set a variable to be accessed by the id of a dom object
const myHeading= document.getElementById('myHeading');
const myButton= document.getElementById('myButton');
const myTextInput = document.getElementById('myTextInput');

// function to activate when the object is clicked
myButton.addEventListener('click', () => {
    // myTextInput is an object and value is one of the properties, this is 
    //changed when you type in a new value and so changes the colour of hte heading
      myHeading.style.color = myTextInput.value;                           
});
