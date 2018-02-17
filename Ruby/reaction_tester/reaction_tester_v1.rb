=begin
Problem
A reaction tester is a simple program that times how long it takes for the user to see a message and react to it by pressing a button. 
The reaction tester can be completed without using a loop at all. 
However, in a later lesson, the students will encounter some requirements from a client 
which they will need to analyse to decide how they will use loops to implement the solution.

In most languages you usually need to use library functions to generate random numbers and act as a timer. 
These vary according to the language. Some languages are not suitable for this task, for example, 
PHP is processed on the server side and would not work.

When you make a program it is usually for a client and not yourself. You to collect information from the client, analyse that information and then produce a solution. 
It is important that your solution matches the clients need otherwise the system will fail. 

=end

#call the io console library
require 'io/console'        

puts "Welcome to the reaction tester. :) get ready to be tested people!!!!"
#a function to call a user input of a key to then continue once input occurs                                                                                               
def continue                                                                                                               
  puts "press any key"                                                      
  #get character to continue the program                                              
  STDIN.getch                                                                                                              
end  

def countdown
	#countdown timer for 5 seconds
	for i in 1..5 do
		puts i
		#sleeps the processor for 1 second
		sleep(1)
		#once reach the number 5 output message to begin
		if i==5
			puts "GO GO GO!!!!!"
		end
	end
end


def timetaken
	#register the current time
	time = Time.now
	#take a character input
	STDIN.getch
	#register the new time
	time = Time.now - time
	#output the time taken
	puts "it took you #{time}"
end

#set loop control variable
quit = false
while (quit == false) do
	#call the continue function
	continue

	#call the countdown timer
	countdown

	#call the timetaken function
	timetaken
	#restart if wishes to hae another go
	puts "would you like another go? Y or N"
	again = gets.chomp.downcase
	if again == "n" || again =="no"
		#update control variable
		quit = true
	end
end

