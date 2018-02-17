=begin
What am I?' is a simple classification game. 
The user must think of a type of pet and the computer will then ask a series of yes-or-no questions before it attempts to guess what the pet is.

For example, the computer might ask 
‘Does the pet have legs?’. 
The response to the question causes the program to branch and ask further questions depending on whether the answer was ‘yes’ or ‘no’. 
For example, if the answer to ‘Does the pet have legs?’ is no, it makes no sense to ask ‘Does the pet have eight legs?’. 
The task is to write a program that can use the answer to a question to make a decision about what to do next.

Don't get caught up with all the questions, make 6 questions that can branch either way to then give a result. 
=end

#function to validate the user input
def validateAnswer(answer)
	#and is used as the value of true needs to occur as we are using nots! if we used == then an or would be used
	while (answer != "y" && answer != "n") && (answer != "yes" && answer != "no")  do
		puts "please answer y or n"
		#chomp is to remove the return character /n , downcase to validate capitals and mixed casing as accepted
		answer = gets.chomp.downcase
		#recursion is placed here to allow the function to recheck tha overall result
		validateAnswer(answer)
	#ruby requires an end to while loops
	end
	#return of the answer is outside of the while loop, this means that the value is returned if loop isn't entered
	return answer
#each function requires an end statement
end

#the message is an intro and first question
puts "Welcome to the animal guessing program"
puts "Choose and Animal: Lizard, Fish, Monkey, Cow"
puts "is your animal warm blooded?"
#user input to take the first attempt of an answer
answer = gets.chomp.downcase
#answer is set to the return of the validated answer
answer = validateAnswer(answer)
#set of nested if statments to check the answer given from the user
if answer == "n" || answer =="no"
	puts "It's a lizard?"
elsif answer =="y" || answer =="yes"
	puts "does your animal have 0 legs"
	answer = gets.chomp.downcase
	answer = validateAnswer(answer)
	if answer == "y" || answer =="yes"
		puts "your animal isn't an animal, its a fish!"
	elsif answer =="n" || answer =="no"
		puts "does your animal have 2 legs"
		answer = gets.chomp.downcase
		answer = validateAnswer(answer)
		if answer == "y" || answer =="yes"
			puts "your animal is a Monkey"
		elsif answer == "n" || answer =="no"
			puts "your animal is a cow"
#each if requires an end statement, each else if would require one too, an elsif removes this necessity
		end
	end
end
