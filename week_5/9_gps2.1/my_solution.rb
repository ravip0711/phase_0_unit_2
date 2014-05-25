# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Julius Jung

# Our Refactored Solution
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  quantity = {"pie" => 0, "cake" => 0, "cookie" => 0}
  raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)

  quantity[fav_food] = num_of_people / my_list[fav_food]
  remainder = num_of_people % my_list[fav_food]
    return "You need to make #{quantity[fav_food]} #{fav_food}(s)." if num_of_people % my_list[fav_food] == 0
  
  my_list.each do |k,v|
    next if remainder < v
    quantity[k] = (remainder / v)
    remainder = remainder % v
  end 

    "You need to make #{quantity["pie"]} pie(s), #{quantity["cake"]} cake(s), and #{quantity["cookie"]} cookie(s)."
end


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
#edited this drive code to make it make it work appropriately.
p bakery_num(15, "pie") == "You need to make 1 pie(s), 1 cake(s), and 1 cookie(s)."

#  Reflection 

#I thought this activity was pretty interesting. I learned more about code and how it is written to do something. I have been having trouble the past couple days understanding how it all falls together, mixing up my syntax and how to call for things. The difficult part of this activity was trying to figure out what to refractor, as it was the main point of this challenge. I did seem to grasp the bits of code, sometimes I would get lost in what meant what. Things just start looking all the same so it was great to have us commenting out the parts of the code so we know and understand each element. This way it not only helps to refer back quick to what the code snippet does, but helps you remember. I learned a little more syntax in terms of methods used in the code. I have now practiced with understanding what it means to refractor and simplify the code. I did have difficulties keep up with the elements of the code, I would have to go through the logic of how the code flows over and over just to keep an understanding of it. I found the tedious part of it to be trying to understand the jumble of the if, else, and while statements. I also didn't understand what we were suppose to change in the driver code. I made the changes manuaally but its not doing it when I test it on IRB. 


