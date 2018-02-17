=begin
What am I?' is a simple classification game. The user must think of a type of pet and the computer will then ask a series of yes-or-no questions before it attempts to guess what the pet is.

For example, the computer might ask ‘Does the pet have legs?’. The response to the question causes the program to branch and ask further questions depending on whether the answer was ‘yes’ or ‘no’. For example, if the answer to ‘Does the pet have legs?’ is no, it makes no sense to ask ‘Does the pet have eight legs?’. The task is to write a program that can use the answer to a question to make a decision about what to do next.

Don't get caught up with all the questions, make 6 questions that can branch either way to then give a result. 
=end

#intial version of the program, see the final version selection.rb

puts "Welcome to the animal guessing program"
puts "Choose and Animal: Lizard, Fish, Monkey, Cow"
puts "is your animal warm blooded?"

answer = gets.chomp!

if (answer == "n")
	puts "It's a lizard?"
elsif (answer =="y")
	puts "does your animal have 0 legs"
	answer = gets.chomp!
	if (answer == "y")
		puts "your animal isn't an animal, its a fish!"
	elsif (answer =="n")
		puts "does your animal have 2 legs"
		answer = gets.chomp!
		if (answer == "y")
			puts "your animal is a Monkey"
		elsif (answer == "n")
			puts "your animal is a cow"
		end
	end
end
