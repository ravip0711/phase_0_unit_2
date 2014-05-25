# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [By myself].

# 1. Pseudocode

# What is the input?

#The inputs will be length and padding.

# What is the output? (i.e. What should the code return?)

# The code should return the array that icludes the inital array elements and padded items.

# What are the steps needed to solve the problem?

#Create a class Array
#Create an object called pad that has the parameters of length and padding
#If length of self(array) is greater than or equal to length, return the original self(array)
#If length of self(array) is less than length, return self plus padding
#Find the difference between self.length and length, and push the padding elements to self that many times

# 2. Initial Solution

class Array

 def self.pad(length, padding=nil)

 	if self.length >= length
 	return self
	end
 	padding_size = length - self.length
 	padding_size.times do 
 	self.push(padding)
 	end
 	self
 end

end



# 3. Refactored Solution

#I found the code to be very explanitory and easy to comprehend. There are some elements in the code that I may need more practice with, but overall I think it's a basic code snippet.



# 4. Reflection 
#I found this challenge to be a bit complicated to understand. I thought the directions were a bit cofusing to a newbie. I had questions regarding the layout of the code, but I used Pseudocode to help me figure it out. I also used office hours where Laura helped me understand how the layout of the code should be. I learned about how to use "self". From what I understood, self will direct towards the array, so when you call "self" you will be calling for the array. I also learned about how to create the method pad. I had difficulty understanding what it means to create a method, and I'm slowly understanding it. Another helpful thing we did when writing the code was to write Pseudocode in the code first. That helped narrow it down to what exactly we wanted to do. Like usual, working with a tutor, things looked so easy, simple, and quick to do, but when you actually do it just by yourself, it gets difficult and you don't know what to do. The tedious part I found was first figuring out what I needed to do to make the code work. I thought I knew IRB but I tried to see if this code works and I hit a roadblock. I realized that I didn't know IRB as well as I thought I did and will need to do more research on using it. I tried to find the error with rspec and wasn't successful.