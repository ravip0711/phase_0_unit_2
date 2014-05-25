# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
#The input will be separate_comma which will take an integer

# What is the output? (i.e. What should the code return?)
#Once the input is given, the output will be the same number that was the input with commas in it.

# What are the steps needed to solve the problem?
#Create a method called separate_comma
#Add a parameter called number
#Find a method that would put comma's after every 3 digits
#Or find a method that would split the digits into an array of 3 and then attach the array together with a comma
#Return new number with the modification




# 2. Initial Solution
def separate_comma(number)
	number
end



# 3. Refactored Solution

# def separate_comma(number)
# 	number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
# end

#I found this answer through my research. It seems to be the shortest and cleanest refactored code I found. I wasn't able to figure out the challenge on my own.




# 4. Reflection 

#I understood what was asked to be done but didn't know how to syntax it. The input is the number, and the output is the number with commas. I did do a little research to find an answer that worked, but I don't completely understand it. I understand the elements of defining a variable, with number as the parameter. The number then is turned into a string, then reversed. The .gsub method is used to index the digits. I have trouble understanding the Ruby Docs as it is very hard to comprehend for soemone who is new to Ruby. I feel like the more familiar I will get with it, the better I'll be able to understand it. I wrote above what two ways I would approach this challenge in my Pseudocode. I did use google to search how to find a solution for putting commas, which I found the answer to and put in the refactored solution. I had trouble with finding a method that would work. I did notice the refactored solution shows the number being translated to a string and then reversed. I didn't understand that part. I did learn something new, the .gsub is a method to index digits in your code. I thought that would be very handy in the future to use. I enjoyed the challenge but the tedious part of it is not knowing what to do once you've attempted to figure out how to do it. I wrote Pseudocode and provide two different ways I would attack the solution. I don't know how to do it from there which I figured is part of the learning and researching I need to do more of.

