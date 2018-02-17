// set a variable to be accessed by the id of a dom object
const myHeading = document.getElementById('myHeading');

//set flag
let = 'true';

// function to activate when the object is clicked
myHeading.addEventListener('click', () => {
  if (let == 'true') {
     
      //chnage colour to red
      myHeading.style.color = 'red';
     let ='false';
      } else {
          
          //change colour to blue
    myHeading.style.color = 'blue';
                           let='true';
                           }
                           
});
