# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Julius Jung
# 2) Ravi Patel

 # This is the file you should end up editing. 
 
# Create a new method called 'bakery_num' that takes in two inputs: number of people and the favorite food 
def bakery_num(num_of_people, fav_food)
  # The hash 'my_list' contains the name of the food as a key and how many pieces each food has as a value.
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}

  # Creating the quantities of food to use as leftovers later on. Default value it set to 0.
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  # Variable checker is set to a boolean value of false.
  has_fave = false

  # Go through each key in the hash 'my_list'
  my_list.each_key do |k|
  # If the key is equal to our input 'fav_food', set our variable checker 'has_fave' to true and set our favorite
  # food variable to the key.
    if k == fav_food
     has_fave = true
     fav_food = k
    end
  end
  # If our favorite food input wasn't found in the hash, raise an argument.
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  # If the favorite found was found in the hash, set our favorite food quantity equal to its hash value.
  else
    fav_food_qty = my_list.values_at(fav_food)[0]
  # If the quantity of our favorite food can be evenly distributed to the number of people, return a string
  # stating how much of the favorite food we need to make by dividing the number of people by the number of 
  # pieces of food.
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  # If the quantity of our favorite food cannot be evenly distributed to the number of people, divide the number
  # of people by the number of pieces of pie. The remainder will be divided by the number of cake. The remainder
  # will be served cookies.
  else num_of_people % fav_food_qty != 0
    while num_of_people > 0
      if num_of_people / my_list["pie"] > 0
        pie_qty = num_of_people / my_list["pie"]
        num_of_people = num_of_people % my_list["pie"]
      elsif num_of_people / my_list["cake"] > 0
        cake_qty = num_of_people / my_list["cake"]
        num_of_people = num_of_people % my_list["cake"]
      else
        cookie_qty = num_of_people
        num_of_people = 0
      end
    end
    # Return a string stating how the food was distributed.
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
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
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!