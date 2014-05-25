# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].



# 1. First Person's solution I liked
#    What I learned from this solution
# I learned that he actually refactored the code down to even simplier terms than I had done. He also used words he can understand as the variables. He also used the "<<" syntax that means it puts the item to the end of the array. He also used the clone method to duplicate the object self.

# Copy solution here:

# Create an Array class so that we can call self on it
# Write a method called pad! and another called pad that takes two parameters
# Set one of the parameters equal to nil if user inputs nothing
# Pad!: if the first parameter (length_of_array) is shorter than the array length
	# Return the length_of_array minus self.length.times self << what_to_print
	# Call self
# Pad: create a new variable and set that equal to a cloned self (array)
# Repeat the code block but this time call the new variable instead of self


# class Array

# def pad!(length_of_array, what_to_print=nil)
#   if length_of_array > self.length
#     (length_of_array - self.length).times {self << what_to_print }
#   end
#   self
# end



# def pad(length_of_array, what_to_print=nil) 
#   new_self = self.clone 
#   if length_of_array > new_self.length
#     (length_of_array - new_self.length).times {new_self << what_to_print }
#   end
  
#   new_self
# end




# end





# 2. Second Person's solution I liked
#    What I learned from this solution
# I learned that he used the .dup method to create a new instance. I also see that he used the push method to push the additional terms that need to go in the array.

# Copy solution here:

# class Array
# 	def pad(x,y=nil)
# 		if x > self.length
# 			array_out = self.dup
# 			while x > self.length
# 				array_out.push(y)
# 				x-=1
# 			end
# 			return array_out
# 		end
# 	end
# 	def pad!(x,y=nil)
# 		if x > self.length
# 			array_length = self.length
# 			while x > array_length
# 				self.push(y)
# 				x-=1
# 			end
# 			return self
# 		end
# 	end
# end




# 3. My original solution:

#Create a class Array
#Create an object called pad that has the parameters of length and padding
#If length of self(array) is greater than or equal to length, return the original self(array)
#If length of self(array) is less than length, return self plus padding
#Find the difference between self.length and length, and push the padding elements to self that many times


# class Array

#  def self.pad(length, padding=nil)

#  	if self.length >= length
#  	return self
# 	end
#  	padding_size = length - self.length
#  	padding_size.times do 
#  	self.push(padding)
#  	end
#  	self
#  end

# end



# 4. My refactored solution:

class Array

def pad!(length, padding=nil) #Didn't need to use the .pad to the self, self can used without having to attach the method
  if length > self.length #Used just a greater than symbol to execute code if length is greater, don't need to do it if its equal. I am just using one if statement to execute if the length is longer than the array, otherwise the code will just put current array without changes.
    (length - self.length).times {self << padding} #the difference of lengths will be used and .times is reflected to the number of times to iterate. It is easier to use "<<" to put the extra array elements at the end than to push them into the array.
  end
  self
end

def pad(length, padding=nil) 
  self_new = self.clone #the.clone is used to refer to the original array.
  if length > self_new.length
    (length - self_new.length).times {self_new << padding}
  end
  
  self_new
end
end


# 5. Reflection

# So I tried and miserably failed to do this challenge. I wasn't able to finish the challenge, but when I saw the other student's challenges I was like duh, wow this looked so simple. I'm sure it was hard to initially figure out. I had a hard time understanding what the goal of the challenge is. I then knew what it was asking for but didn't know exactly how to put it into syntax. I learned a lot on how to use a simple thought process to gain the answer. Don't worry about focusing on the other elements, use what is given to you in the challenge. I have a little trouble still understanding what and how "self" is used in the coding. I did learn a little new syntax such as "<<" and .clone. I am okay with the learning concepts, I first was overwhelmed with the activity but then I saw other people's solution I realized it wasn't too bad. I did enjoy seeing how other people's thought process worked. It was awesome to see people succeed at finishing the activity. Once I read the solution of another students, I learned that this is so simple and I made it hard on myself. The tedious part of this exercise was trying to understand someone's code that is largely different from yours. I didn't understand one of the student's solution/thought process because it was a little choppy. It doesn't really help you if you can't follow through the code, maybe a little more Pseudocode would have helped to understand the elements in the code.
