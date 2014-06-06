# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [By Myself].

# 2. Pseudocode

# Input: Reverse Polish Notation will be the input
# Output: The output will calculate the input as a Reverse Polish Notation calculator
# Steps:

#Create a class called RPNCalculator
#Take the input and separate each digit(including the math operators)
#Then take the 3rd index/element which is the math operator and arrange it so that it is in between the two input numbers
  #I was thinking about using the push method to push the first digit to the 
  #algorithim is to push the first two digits, pop the digits and use the math operator, then continue to push two more digits
#evalute the terms so that the digits and math operators calculate
#Create an instance method called "evaluate" which will take the RPN input and return the calculation


# 3. Initial Solution

class RPNCalculator

  def evaluate(rpn)
    rpn_num = rpn.split(" ")
    operators = ["+", "-", "*"]
    i=0
    array_numbers = []
    while i < rpn_num.length
      until operators.include? rpn_num[i]
        array_numbers.push(rpn_num[i])
      end
      i+=1
    end
    
  .send


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

# rpn_num.length = 3 
# rpn_num[0] = 1
# rpn_nim[1] = 2
# rpn_num[2] = 3





# 5. Reflection 

# I did manage to start the problem and eveything was good until figuring out the code for making the calculator work. My thought process was to separate the numbers, then bring the opperator back and do the opperation on the numbers that were pulled. I faced problems figuring out how to make the code stop at a number before an operator and then use that operator for the previous numbers it just pulled. This one was a tough one because I didn't know how to start even after writing Pseudocode. I did learn more on doing loop methods but I still am working to understand it completely. I did learn how to impliment a while and until loop to stop at an operator in an array. I am feeling okay about the learning competencies because I did know what the challange is about, but putting it into syntax is the hard part. The tedious part about this challenge is that when you get stuck, your not sure what to do. Its quite easy to get stuck because theres multiple elements you have to worry about such as knowing when to stop iteration, pushing or popping the operators.
