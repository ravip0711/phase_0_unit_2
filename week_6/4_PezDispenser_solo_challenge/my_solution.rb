# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [By myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
#Initialize a new pez dispenser that is full with pez flavors in it
#Create a pez_count method so it counts how many pez are in the dispenser
#Create a method called #get_pez, which will remove one pez from the dispenser
#Create a method called #add_pez, which will add a pez to the dispenser.
#Create a method called #see_all_pez, to see all the flavors inside the dispenser


# 3. Initial Solution

class PezDispenser

	def initialize(flavors)
		@contents = []
		@flavors = flavors
	end

	def pez_count
		@contents.count
	end

	def get_pez
		@contents.shift
	end
	
	def add_pez(add_flavor)
		@contents.unshift(add_flavor)
	 end 

	def see_all_pez
		@contents
	 end 

end
 


# 4. Refactored Solution

#I couldn't think of anything to refractor besides the see_all_pez. I had a question about it. Could you turn that into an attr_reader statement?


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "Assertion failed" unless yield
end


@contents = ["red", "blue", "green", "orange"]
assert {@contents.pez_count == 4}		#i'm not sure why this is giving me errors
assert {@contents.get_pez == "red"}



# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
#What worked for me was trying to understand the problem first. I wanted to get a whole picture of what I was creating here. I started writing down Pseudocode to help me understand each method I wanted to make and what it would do. I then realized the directions were to start from the drive test code first. I did run into a problem of trying to understand the driver code, but as I broke it down into parts, It made more sense. I also used the terminal to run the code and see what I would get.

# What questions did you have while coding? What resources did you find to help you answer them?
#I had a question about how create driver test assert statements. I know how to make a basic one, but this was a little more complicated for me. I was trying to create a condition first by making an array of flavors that would be in the Pez Dispenser. I then used methods and set them equal to what I should recieve given the Pez Dispenser array. It didn't seem to work and I have a guess that it might have to do with the method calls not being in the right scope. 

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I am still having trouble with creating driver test assert methods to do more complex tests.

# Did you learn any new skills or tricks?
#I learned about a new method called #shift and #unshift. #Shift takes out the first element in an array. #Unshift puts a new element into an array at the beginning. I also learned about what user stories are.

# How confident are you with each of the Learning Competencies?
#I was not sure what it exactly meant to turn user story to a driver test. I might have done it without noticing it. Otherwise I am pretty confident in using driver test code to make classes and use instance variables.

# Which parts of the challenge did you enjoy?
#I did enjoy reading the driver test code and figuring out what methods I need to create and use. I also enjoyed testing the code in the terminal to make sure it works.

# Which parts of the challenge did you find tedious?
#I found some parts of the driver test code tedious. I was a little confused seeing all the puts statements. It helped me understand all those puts statements when I tested the code in the terminal.

