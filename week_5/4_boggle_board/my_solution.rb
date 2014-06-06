# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [Francisco ].

# board = [["b", "r", "a", "e"],
#         ["i", "o", "d", "t"],
#         ["e", "c", "l", "r"],
#        ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

#create a class called BoogleBoard
#initialize so that we can recieve user input for which row the user wants
#create a variable that will get rows

# Initial Solution

# class BoggleBoard

#   def initialize(board)
#     @board = board
#   end

#   def get_row(row)
#     @board[row]
#   end
  
# end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  
#Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#Write a method for get_col and get an input for column from the user
#User will give input for which column
#Iterate using a method to select an index in each array
#return the index which would be the column numbers

# Initial Solution


boggle_board = [["b", "r", "a", "e"],
        ["i", "o", "d", "t"],
        ["e", "c", "l", "r"],
        ["t", "a", "k", "e"]]


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
  
  # def board(get_row, get_col) # I can't get this to work out, I tried too many ways
  #   @get_row = get_row
  #   @get_col = get_col
  #   @get_row + @get_col
  # end
end

game = BoggleBoard.new(boggle_board)

# puts create_word(board, [2,1], [1,1], [1,2], [0,3])

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

#game = BoggleBoard.new[["b", "r", "a", "e"],["i", "o", "d", "t"],["e", "c", "l", "r"],["t", "a", "k", "e"]]
#game.get_row(0) => ["b", "r", "a", "e"]
#game.get_col(0) => ["b", "i", "e", "t"]

puts game.board == boggle_board
puts game.get_row(0) == ["b", "r", "a", "e"]
puts game.get_col(1) == ["r", "o", "c", "a"]

puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false
puts game.create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code"


# Reflection 

#The strategy that worked was that I tried to keep the code as simple as possible trying to understand how to find the right numbers. I had problems with figuring out how to find the columns. I did a little research and found a method (.map) that works from stackoverflow. I had questions regarding how to get coordinate inputs and connect them to find the right letters. I used google to find any resources, but didn't have any luck finding information on it because it is very specific. I have trouble still understanding how to retrieve elements from an array that are more complicated and not just retrieving a row. I did learn how to get a row from an array. I was thinking it was going to be more complicated than it actually was. I did learn how to get columns in an array, which after much research I found was very easy to do. I am okay with the learning concepts, I saw some solutions that turned the letters into an array. I felt like that was the harder way to do it and just didn't understand how it all translated into syntax. I did enjoy learning how to get a row or column from multiple arrays. I found finding the column tedious and also trying to figure out how to get the board to work where if I gave it coordinates, it would return a word. I wasn't able to figure out that part after doing a lot of trial and error coding.



