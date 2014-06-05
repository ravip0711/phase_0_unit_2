# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge By myself.

# 2. Pseudocode

# Input: The input will be an array of strings
# Output: The output will be a string from the array
# Steps:

#Create a new class called Die
#Initialize an input that takes an array of strings
#Create a local variable of labels so I can use it throughout the methods in the class
#Create a sides method that will return the number of elements within the array
#Create a roll method that will return a random string within the array
#Raise an ArgumentError for any input that is an empty array


# 3. Initial Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError.new("Cannot be an empty array.")
  	else
  	@labels = labels
  end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end



# 4. Refactored Solution

# I think this is the simpliest my code could be for this challenge. I don't see anything I can refactor further.





# 1. DRIVER TESTS GO BELOW THIS LINE

#I am confused about how to do Driver Tests.




# 5. Reflection 

#I am so happy I got this challenge done without any help. I have started to understand classes and methods better so this activity was pretty simple. I didn't really face any problems with this activity. I do have questions about driver test code. I still need to research more into the drive test code and learn how to write them. I learned a lot from doing the technical blog first about classes. It helped me learn and get to know how to make, create, and use classes. I'm still having trouble with drive test code. I don't know how its written so I need to research more into that. I did learn a new method called .sample. It returns a random element from an array you call on. I also learned that using the brackets [] will signify an empty array. I knew about that already just didn't know it would work in a if statement and equaling it to something else, but it did work. I am actually pretty confident in the learning competentcies besides the driver test code. I actually enjoyed this activity because it actually made sense to me. It made sense what the challenge wanted me input and output so I instantly knew what to do. I did Pseudocode and then did some research on how to call a random element from an array. The tedious part was I guess finding out how to get a random element from an array. Luckily I found out the answer quickly and tested it out, but if that article was not on stackoverflow, I would have been stuck.


