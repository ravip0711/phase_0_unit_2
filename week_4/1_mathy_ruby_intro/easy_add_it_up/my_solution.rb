# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? 
#The inputs are the numbers from the arrays

# What is the output? (i.e. What should the code return?)
#The outputs are going to be the sum of numbers in the arrays

# What are the steps needed to solve the problem?

#Create a method named total
#Add a single argument to total
#Return the sum of array 1
#Return the sum of array 2

#Create a method named sentence_maker
#Add a single argument to sentence_maker
#Return grammatically correct sentence of the first sentence
#return grammatically correct sentence of the second sentence





# 2. Initial Solution

def total(array)
	array.inject{|sum,x| sum + x }
end

def sentence_maker(sentence)
	sentence.join(" ") #can't seem to figure out how to get the punctuation right
end




# 3. Refactored Solution

#I found that my code was very simple so there was not much room for refractoring. Refractoring is making your code more efficient by reducing extra code.



# 4. Reflection 

# I found this challenge very hard from the beginning because I didn't give myself enough time to understand ruby with an open mind. I keep mixing up all the syntax and not knowing how to put it on the screen. Luckily with a little google search and reading more about Ruby, I managed to start the challenge, finding it actually easy until I ran into something that didn't work. I refered back to codeacademy.com to revist methods and defining a variable. I did face the problem of not figuring out the last element of the challenge. I figured out how to join the array, but not put it into the correct punctuation. I did have a question on making sure if I used the right methods to complete the challenge. I do have trouble with syntax but that is because this is all new to me. I did learn a little bit more about block code, the whole element of {|i| i } in coding. I still have questions regarding understanding it but I feel like I'll learn as I go. I am confident about understanding the learning competencies, just not knowing how to write them down in code. I did enjoy the challenge of figuring out how to make the code pass being true. I found that this challenge took me longer than it should have. I think about the elements too into detail without having an understand from a gloabl perspective.