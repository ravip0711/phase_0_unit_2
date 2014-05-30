# U2.W5: Die Class 1: Numeric


# I worked on this challenge [with Dominic (tutor)].

# 2. Pseudocode

# Input: 
#a die with 6 sides

# Output:
#Sides should return 6
#Roll should return a number 1-6

# Steps:

#create a class called Die
#initalize with some number of sides
#create an instance variable called sides
#die.sides should return 6
#create an instance variable called roll
#die.roll will return a number 1 through 6
#if die.roll is less than 1, raise argument error

# Create Die Class
# Die class should output the amount of sides on the die
#     Die needs variable to hold the amount of sides on the die
#     Send the number of sides the die should have to the class when we create the class
#     We should have a die method called sides that outputs that amount of sides sent over when we created the class
# Die class should roll and give me a random number between 1 and the amount of sides on the die
#     Die needs roll class to give random number on a roll
#     Use rand method to find random number between 1 and the number of sides. Return that random number
#     The die roll cannot be below 1. If so return an ArgumentError

# 3. Initial Solution

class Die #new class
  def initialize(sides) #new object
    @sides = sides #instance variable
    @roll = roll #instance variable
  end
  def sides #method
    6
  end
  def roll #method
    if die.roll > 1
    	raise ArgumentError.new("die is less than 1") #raise argument error
    else
      rand(6) #return random number 1-6
    end
  end
end


# 4. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new("Cannot have less than 1 side")
    else
        @sides = sides
    end
  end  
  
  def sides
    @sides
  end
  
  def roll
    return rand(1..@sides)
  end
  
end 





# 1. DRIVER TESTS GO BELOW THIS LINE

die.sides # => @sides
die.roll #1..@sides




# 5. Reflection 

# The parts of my strategy that worked was to first write Pseudocode and then try to work from the Pseudocode and translate it into code. I did encounter have Pseudocode that was generic and basically from the readme file so I need to work on writing more detailed Pseudocode. The questions that I had were the basic understanding of class, methods, instance variables. I was getting confused how all those worked together and translated into working code. I also had questions on clarifying how to test the code in IRB. I started reading class chapters from The Well-Grounded Rubyist book and Learn How to Program by Chris Pine. I also viewed a couple GangesLearning videos. I had trouble basically about how everything works together. I needed more clarity from a outwords view on how all the elements in the code work together and solve the challenge. I did get clarification on the concepts of class, methods, the initialized method, and instance variables. I am pretty confident on the learning competencies, just sometimes get confused and need clarity with all the elements. I do need more help with the Driver Code as that is something I am completely not sure how to write out. I understand what it is for, just not sure how to write tests myself. I did enjoy learning how the code works and in the end how it runs. Like usual, it feels like it was so easy and much more simple than initially thought. The tedious part was trying to understand the question and translating it to Pseudocode. I sometimes don't understand what exactly the question is asking or what the challenge wants me to do.

