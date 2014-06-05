# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [Francisco Scala].

# Input: Getting a Credit Card number from the user
# Output: True or false depending on if the credit card is valid.
# Steps:

#Create a class called CreditCard
#Initialize check_card so we recieve a credit card number from the user
#Raise ArgumentError if check_card is not 16 digits
#Put in an array, then reverse the numbers
#Take every other number and double it
#Join new values in the array
#Split every digit and add
#Modulus 10 which should equal remainder 0 for true


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
#
class CreditCard
  def initialize(card)
      @card = card.to_s.split.reverse
      if @card.length > 16
      raise ArgumentError.new("Credit card number is not 16 digits")
      elsif @card.length < 16
      raise ArgumentError.new("Credit card number is not 16 digits")
    #else
    #@card_num = card_num
    end
  end
  
  def check_card
    # c_num = @card_num.to_a.reverse
    def uneven_array
      uneven = @card.select {|x| x % 2 != 0}
      uneven = uneven.each {|x| x*2}.join
    end
    def even_array
      even = @card.select {|x| x % 2 == 0}.join
    end
    def final_array
      (uneven + even).reduce(:+)
    end
    final = final_array % 10 == 0
    return final
  end
end


# 4. Refactored Solution

class CreditCard
  def initialize(card)
      @card = card.to_s
      if @card.length != 16
      raise ArgumentError.new("Credit card number is not 16 digits")
    	end
  end
  def check_card
    def uneven_array
      odd_num = @card.select {|x| x % 2 != 0}
      uneven = uneven.each {|y| y*2}.join
    end
    def even_array
      even = @card.select {|x| x % 2 == 0}.join
    end
    def final_array
      (double + even).reduce(:+)
    end
    def final
    	final_array % 10 == 0
    end
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

#if card.length != 16 => raise argument error




# 5. Reflection

#I think parts of our code worked very well. We used Pseudocode and translated everything which helped break it into sections. We ran into problems about understanding how the user input will be reflected to us. Will it just be in numbers, an array? We weren't sure so we just turned it into a string. We had questions regarding our errors. After the whole problem, we still had two errors that we could not understand at all. We tried playing around with the code using trial and error method but we realized we are just wasting time since we spend a lot of time on it already. I am still having trouble with understanding blocks and remembering which methods work with strings and which methods work with arrays. I get mixed up between knowing if a method will take the whole array or elements within the array and what it will then output. I did learn how to check for odd numbers in code using modulus. I also learned that you can def a method within a method. I also learned how to use the .reduce method using :+ as a parameter to help add all the digits. I enjoyed this challenge figuring out and brainstorming how to tackle the problem. What I found tedious is knowing which methods and how to form the syntax to make the code do what you want it to do. I am still having trouble understand how to write driver test code.

