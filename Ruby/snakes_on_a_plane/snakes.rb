=begin
There are two gangs of rival snakes, each with three members, in the aisle of a plane and they need to go past each other. 
Unfortunately, both groups of snakes were busy frightening the passengers and didn't notice the other group until there was only a one snake-sized 
gap in between them. 
The snakes cannot occupy the same space as each other (they will fight!), 
but they can hop over one snake as long as there is a gap on the other side. 
They prefer moving to an empty space to hopping. How can they all get past safely? 
The task is to solve this problem using an array.
=end

#setup an array with A A A " " 	B B B 
snakes = ["A", "A", "A", "_","B","B","B"]

#simple function to print out the snakes to screen
def printSnakes
	snakes.each do |snake|
		print snake
	end
	puts ""
end

#print out first instance of the array
puts snakes
#check the array isn't sorted in the order wanted
while snakes != ["B","B","B", "_", "A", "A","A"]
	#go through the array using traditional for loop
	for index in 0 ... snakes.size
		puts "snakes[#{index}] = #{snakes[index]}"
		#!!!!!!!!NOT WORKING CHECK THIS TOMORROW!!!!
		if ((snakes[index]!= "_") && (snakes[index+1] == "_"))
			snakes[index+1]= snakes[index]
			snakes[index] = "_"
		elsif (snakes[index]=="A" && snakes[index+1]=="B") && (snakes[index-1] =="_")
			snakes[index-1]="B"
			snakes[index+1]="_"
		end
		#keep the same line unless come to the end of the array , if that happens start again
		if (index!= (snakes.size-1))
			print snakes[index]
		else 
			puts snakes[index]	
		end
	end	
end

puts "snakes[#{index}] = #{snakes[index]}"
=begin
	
AAA_BBB
AA_ABBB SWAP A

AABA_BB JUMP B
AABAB_B SWAP B
AAB_BAB JUMP A
A_BABAB JUMP A
AB_ABAB SWAP B
_BAABAB JUMP A
B_AABAB SWAP B
BA_ABAB SWAP A
BABA_AB JUMP B
BABABA_ SWAP A
BABAB_A JUMP A
BAB_BAA JUMP A
B_BABAA SWAP B
BB_ABAA JUMP B
BBBA_AA SWAP A
BBB_AAA


PASS ONE
AAA_BBB
AA_ABBB SWAP A
AABA_BB JUMP B
AAB_ABB SWAP A
AABBA_B JUMP B
AABB_AB SWAP A
AABBBA_ JUMP B
AABBB_A SWAP A






=end