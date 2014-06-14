# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [By myself].


# 3. Initial Solution

class BoggleBoard
  attr_reader :board

  def initialize(board)
    @board = board
  end
  
  def get_row(row)
    @board[row]
  end
 
  def get_col(col)
    @board.map { |sub_array| sub_array[col] }
  end
  
  def create_word(boggle_board, *coords)
    coords.map { |coord| boggle_board[coord.first][coord.last]}.join("")
  end

  dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
  
  

# 4. Refactored Solution

#The solution is pretty direct and simple to understand. I don't see anything else that could be simplified. I did simplify the create_word method because boggle board wasn't necessary becasue we're only using the same one board.

class BoggleBoard
  attr_reader :board

  def initialize(board)
    @board = board
  end
  
  def get_row(row)
    @board[row]
  end
 
  def get_col(col)
    @board.map { |sub_array| sub_array[col] }
  end
  
  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

# implement tests for each of the methods here:

def assert
  raise "Assertion failed" unless yield
end

boggle_board = BoggleBoard.new(dice_grid)
assert {boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"}

puts boggle_board.get_row(0).join
puts boggle_board.get_row(1).join
puts boggle_board.get_row(2).join
puts boggle_board.get_row(3).join

puts boggle_board.get_col(0).join
puts boggle_board.get_col(1).join
puts boggle_board.get_col(2).join
puts boggle_board.get_col(3).join

# 5. Reflection

# You just made a transition from procedural programming to object-oriented programming!  How is the implementation different?  What are the benefits to using the Object Oriented approach (even if it is a bit more code?) Make sure to include your reflection in your gist.

# The difference between procedural programming and object-oriented programming(OOP) is that procedural programming deals with programs made up from modules that are coded and tested separately. In an sense, we take some input, do something, then produce some output. Procedural programming is basically a list of instructions to tell the computer what to do step by step.

#Object-oriented programming can be considered as having main modules in a program that are called classes rather than procedures. You create classes and objects that model real world objects. Functions are all bundled together in these classes and you manipulate data by calling the objects.

#The benefits of using object oriented programming vs procedural programming is that procedural programming relies on procedures that operate on data making them two separate concepts. Object oriented programming bundles the two elements into objects. We can make more complicated behaviors with less repetitive code.

# What parts of your strategy worked? What problems did you face?
#This activity was nearly the same as what we have done in the past. I was confused about how to write driver code to check on methods, but I learned it from tutoring. I was over thinking drive test codes and realized they are just simple code that should work and equal the answer you should receive.

# What questions did you have while coding? What resources did you find to help you answer them?
#I had questions on how to create driver test code. I went to a tutoring session with Roy and he explained to me about writing the driver test code. It was pretty simple and easy to do. I also used the following resources to understand procedural programming vs object oriented programming: http://education-portal.com/academy/lesson/object-oriented-programming-vs-procedural-programming.html#lesson, http://objectorientedcoldfusion.org/procedural-vs-object-oriented.html, http://www.ctp.bilkent.edu.tr/~russell/java/LectureNotes/1_OOConcepts.htm.


# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I'm having trouble still with refactoring my code. I get caught up with all the methods and code that sometimes I get overwhelmed about what is suppose to do what in my code. I was repeating some stuff or writing little syntax that was not necessary. I feel like over time I will become better at it as I gain a stronger understanding of Ruby.

# Did you learn any new skills or tricks?
#I did learn how to write simple driver test code using the assert way. I also learned more on how to test code in IRB and using IRB more for experimenting with code.

# How confident are you with each of the Learning Competencies?
#I am pretty confident with the learning competencies. I am solidifying my knowledge on classes and driver code.

# Which parts of the challenge did you enjoy?
#I did enjoy being able to figure out a way to make my code work so that I can create words. The hardest part is knowing how to access the columns of the arrays.


# Which parts of the challenge did you find tedious?
#The tedious part of the challenge was making puts statements to make sure it outputs correctly. I found myself repeating the puts statements over and over again.



