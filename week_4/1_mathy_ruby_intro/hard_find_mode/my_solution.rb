# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# The input will be the numbers in the array

# What is the output? (i.e. What should the code return?)
# The code should return the most frequent numbers in the array

# What are the steps needed to solve the problem?

#Create a method called mode
#Add parameter as "array"
#Create an empty array of the modes we got
#Cycle through the array as it finds the mode that is the highest in the array and return that


# 2. Initial Solution

def mode(array)
	count = Hash.new

	array.each {|i| i += 1}
	end





# 3. Refactored Solution

#I stuck with this challenge so I don't understand much of what to do after. I don't think I've left anything to refractor.


# 4. Reflection 

#I am so frustrated with this activity. I know its a simple easy solution, but I can't get my head around it. Some things that I did understand is that I know how to make a variable. I know we need a hash and I know how to create one, but don't really understand how to work with it. Hashes are used for making a database with a key that points to a value. In this activity, I know that I need to create a hash database that reflects the array numbers and goes through them adding up numbers that come up more often, i.e. mode. The hash database will show the key as being the number of occurance, and the  hash value will be the value of the number. I feel like I understand the methodology of trying to solve the challenge, I just can't put it into syntax. I enjoyed playing with rspec on the terminal showing me true or false. I didn't like how I obviously wasn't able to finish the challenge. I tend to not move on without understanding everything and this has proven to be very difficult for me. I'm in a constant battle between spending the time to figuring out the answer through research and not being able to finish the challenges on time. I found it tedious that I can not get my head around learning how to control hashes.