var Name;
var Track;
var Achivements;
var Points;  
var students = [
  
  {Name: 'Lloyd', Track: 'JavaScript Full Stack', Achivements: 5, Points: 2424},
  {Name: 'Bob', Track: 'IOs', Achivements: 1, Points: 1231},
  {Name: 'Richard', Track: 'JavaScript Front End Development', Achivements: 3, Points: 142},
  {Name: 'Tony', Track: 'Java', Achivements: 1, Points: 2223},
  {Name: 'Sarah', Track: 'Intro to HTML and CSS', Achivements: 2, Points: 23} 
];

for (var i=0; i<students.length; i++){
    Name = (students[i].Name);
    Track = (students[i].Track);
    Achivements = (students[i].Achivements);
    Points = (students[i].Points);
    
    print('<p><b>Name: '+Name+'</b></p>');
    print('<p>Track: '+Track+'</p>');
    print('<p>Achivements: '+Achivements+'</p>');
    print('<p>Points: '+Points+'</p>');
}


function print(message) {
    document.write(message);
}