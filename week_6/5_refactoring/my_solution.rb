# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

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


# Refactored Solution

class CreditCard
  def initialize(card)
    @card = card.to_s.chars.map(&:to_i) #this will change the card numbers to a string, then to an array by each digit(still in a string). #map will iterate through each digit(still in string) in the array and change it to an integer by using the shortcut (&:to_i).  
    if @card.length != 16
      raise ArgumentError.new("Credit card must be 16 digits")
    end
  end
  
  def check_card
    even_num = @card.values_at(0,2,4,6,8,10,12,14).map { |x| x*2 }.to_s.chars.map(&:to_i).inject(&:+) #this will take all the even card values(by index value) and iterate each one and doubling it. Then we turn it into a string and take each character and turn it into an integer then add the digits together

    odd_num = @card.values_at(1,3,5,7,9,11,13,15).inject(&:+) # we just need to add the odd index digits up
    if (even_num + odd_num) % 10 == 0 #our if statement to check if it is divisible by 0 then true otherwise false
    true
    else
    false
    end
  end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Credit card number is not the correct length" do yield
end

card.length == 16
assert {card.length == 16}
assert {card.length != 16}
end

def assert
  raise "Credit card number is not valid" do yield
end

card_1 = CreditCard.new(1111111111111111)
card_2 = CreditCard.new(4408041234567893)
assert {card_1.check_card == false} #=> return nil
assert {card_2.check_card == true} #=> return nil
assert {card_1.check_card == true} #=> return assert error
assert {card_2.check_card == true} #=> return assert error
end


# Reflection 

# What parts of your strategy worked? What problems did you face?
#So I looked at other people's solutions for this but a lot of them didn't make sense to me besides this one. This one was fairly easy to understand but had a lot of conversion from string to integer to manipulating each character and messing with arrays. It was a mess but breaking it apart helped me understand it. I fixed some areas which I knew were repetitive and/or not necessary. I did face a problem of trying to understand the conversions between strings and integers in arrays. I also understood the challenge more seeing how break it down. I feel like part of the problem is understanding what the challenge is asking to do or solve.

# What questions did you have while coding? What resources did you find to help you answer them?
#I had questions in regards to conversions between string and integers in arrays. I also wanted to know what you would call the input because its not an integer nor a string. I also had questions about the output of things such as #map and #each. I had to keep testing those to remember how they output from the block. I used the Ruby Docs, and Stackoverflow to get some insight on how to do conversions.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I'm having trouble keeping up with the many #methods. I also need to get comfortable understanding string and integer conversions.

# Did you learn any new skills or tricks?
#I did learn an awesome trick with the (&:+) after the #inject method. I'm not sure what it is called but using (&:+) is the same as doing a block method. For example using lets say you wanted to capitalize each letter of a word in an array, your would do array.each {|x| x.capitalize}. Instead you could do a short form of it by doing array.each(&:capitalize). These both codes are equal.

# How confident are you with each of the Learning Competencies?
#I am pretty confident in the learning competencies. I do believe there might be a shorter way to reduce all the swtiching from strings to integers but this was the best I could simplify it as.

# Which parts of the challenge did you enjoy?
#I did enjoy seeing other people's solutions and going through them and seeing what they did to get an idea about how to think of the problem. People think differently and even my inital solution was all over the place. I felt like seeing someone elses helped me organize what I need to know and get a hint of how to attack the problem.

# Which parts of the challenge did you find tedious?
#The tedious part was trying to understand how to convert the string array to integer array to iterating the digits. I was stuck on trying to figure out how to simplify it for hours. Another tedious part was that I was stuck on an issue for the longest time to find that it was just a small little typo mistake that could have saved me so much time.