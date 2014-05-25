# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
# Quy's solution
def my_array_finding_method(source, thing_to_find)
  return source.select { |s| s.to_s.index(thing_to_find) != nil }
end

def my_hash_finding_method(source, thing_to_find)
  return source.select { |k,v| v == thing_to_find }.keys
end

# Identify and describe the ruby method you implemented. 
# select: select a part of an array/hash that meets a certain condition
# (string).index: return the index of a character in a string
# (hash).keys : return all keys in the hash

# Person 2
def my_array_modification_method(source, thing_to_modify)
  return source.map! {|i| i.is_a?(Integer) ? (i + thing_to_modify) : i}
end

def my_hash_modification_method(source, thing_to_modify)
  return source..map! {|x, y| y.is_a?(Integer) ? (y + thing_to_modify) : y}
end

# Identify and describe the ruby method you implemented. 
# #map! is used to created a new array based off the original array but the values can be modified by a block. The "!" is also destructive in the sense that it will modify the original array.
# #is_a? is used to check for integers in the array. The #is_a method checks not only in the instance, but also in the subclass.


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
# Max's solution
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if{|x| x.to_s.include?(thing_to_delete)}
  return source
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if{|x,y| x.to_s.include?(thing_to_delete)}
  return source
end

# Identify and describe the ruby method you implemented. 
# The method I used for this challenge was .delete_if
# Here is a bit on how this method works:
#
# Arrays:
# array.delete_if{|x| block}
#
# The method takes x and goes through each array index and performs whatever code you put in the block. This is similar to
# the array.each method. For example, if you had an array of numbers, and wanted to remove all numbers in the array that were
# greater than 10, you would write the following.
#
# array.delete_if{|x| x > 10}
#
# In my code above, I passed the block x.to_s.include?(thing_to_delete)
# This goes through each index of the array, converts the value to a string, and checks if that value includes thing_to_delete
# The .include? method will fail if you are searching for a string, and the value is an integer, so you need the .to_s method
# in order to get past any errors.
#
#
# Hashes:
# hash.delete_if{|key,value| block}
#
# Similar to the array method above, this method goes through each key/value pair of the hash, and executes the block. I used
# the same block as in my array method to achieve the same result.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# The strategy that worked best for me was just to google and look in Ruby docs for a method that would replace the integers in the array, process a block, and insert the new numbers back into that array. I did find a stackoverflow solution that helped me understand how to attack this problem. I faced the problem of okay I know which method to use, but the how the syntax is placed. I would have trouble with what to put in the block as well. I had questions on what would need to be really different for the hash. I'm still trying to learn how to manipulate data in an array and in an hash. I am not clear on what differences in code there would be. I have trouble with couple little things, such as using the irb to test this. I tried to, but I got stuck trying to test the code. I also am having trouble with driver code. I want to research more into how it is created. I did learn about the #map method, which I had seen before in coding, but I didn't really understand it until this exercise. I am okay with the learning competencies, still need to learn more. I did enjoy finding methods, even though the Ruby Docs I felt were in a whole different language. I found the tedious part to be the search. There are so many methods, and being a beginner, its hard to find methods that you can understand to solve the problems. I feel like it is a learning process and will become more comfortable with it as I continue to use it.
# 
# 
# 