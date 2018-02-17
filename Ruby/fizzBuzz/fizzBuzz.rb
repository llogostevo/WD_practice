=begin

Fizz Buzz is a game in which the participants take it in turns to count upwards from one. The challenge comes from the fact that if the current 
number is divisible by three the participant must say ‘Fizz’ instead of the number, 
if it is divisible by five the participant must say ‘Buzz’ and if it is divisible by both three and five they must say ‘Fizz Buzz’. 
If a mistake is made, that person loses and the game begins again.

The sequence starts like this:

1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz

The task is to write a computer program to automatically generate the sequence up to 100.
=end


#create a loop to count from 1 to 100
101.times do |number|
	
	#create an if statment to check if number is divisible by 3, 5, 3&&5
	#firstly convert the number to an integer so it can be read properly in the calculation
	number = number.to_i
	if (number % 3 == 0) && (number % 5 == 0)
		puts "Fizz Buzz"
	elsif (number % 3 == 0)
		puts "Fizz"
	elsif (number % 5 == 0)
		puts "Buzz"
	else
		puts number
	end
end