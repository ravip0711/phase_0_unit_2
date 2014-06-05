# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: The input should be getting user input on the answer.
# Output: The output will be the user's guess on what the answer is and it will return statements depending on if the guess is low, high, or correct.
# Steps:

#Create a GuessingGame class 
#Initialize the input as answer, where answer would be the number that is picked
#Create instance variable answer so it works throughout the class
#Define instance method .guess which will ask for a number
#If the .guess input number is greater than answer, return ":high"
#If the .guess input number is equal to answer, return ":correct"
#If the .guess input number is less than answer, return ":low"
#Create an instance method that is called solved? It will return true if guess equals answer. It will return false otherwise.


# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess == @answer
      :correct
    else @guess < @answer
      :low
    end
  end
  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end




# 4. Refactored Solution

#I don't think there is anything else I can refactor down to make the code simpler.





# 1. DRIVER TESTS GO BELOW THIS LINE

# I am not sure how to do driver test code.
# I do know one of the tests is to make sure that the initialize method's parameter is being inputed.






# 5. Reflection 

#I was able to start with Pseudocode to understand what the challenge is asking to do. I sometimes don't understand what the challenges are asking. I began writing code for everything I did know how to write syntax for and that worked well as it helped me narrow down what I needed to figure out. I did have problems figuring out why def guess needed a parameter. I was just doing trial and error in my code and figured that it worked. I looked resources on what objects are and had a hard time understand them. I'm slowly learning all the elements of creating classes in Ruby. I did learn that symbols don't need quotes on them, but again I don't know why we create symbols in the code. I am pretty confident in the learning competencies, just not comfortable with writing driver test code yet. I'm confused on that part. I did enjoy laying out all the code that I knew how to do and that worked. The tedious part that took me so much time to figure out was knowing to put a parameter with def guess so that the code would work. I was a little confused on that, but it made my code work.





