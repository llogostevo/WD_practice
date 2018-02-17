var message = '';
var student;
var person;
var quitprog = false;


function print(message) {
  //takes the value of hte message variable and replaces the inner html of the id output, in this case an empty div receives the code of the resulting message variable downbelow.  
  var outputDiv = document.getElementById('output');
  outputDiv.innerHTML = message;
}

function searchfor() {
    person = prompt("Please enter the person you wish to find");
}

//check using console.log that person is being collected

console.log(person);

while (quitprog == false) { 
    
searchfor();
    for (var i = 0; i < students.length; i += 1) {
    // the array is being passed into the object student
      student = students[i];
    //these were checking the correct values are being passed
      console.log(students[i])
      console.log(student)
      console.log(student.name);

    //student with name property matches the person being entered then it will output the data
      if (student.name == person)  {
          //message variable with the appeneded values of the various strings as html
          //this then sends the data back up to the print function at the top
          message += '<h2>Student: ' + student.name + '</h2>';
          message += '<p>Track: ' + student.track + '</p>';
          message += '<p>Points: ' + student.points + '</p>';
          message += '<p>Achievements: ' + student.achievements + '</p>';

          print(message);    

          break;

            } else if (person== 'quit') {
                quitprog = true;
                break;
            } 
    }
}