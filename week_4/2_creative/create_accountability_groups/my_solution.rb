# U2.W4: Create Accountability Groups


# I worked on this challenge [with: Hethe Berg, we are actually from different cohort locations, I am in Chicago, and he is in San Francisco].

# 2. Pseudocode

# Create a variable name
# Value to array of names
# Create 6 empty arrays for the names
# Create the arrays so that they are random and separated into groups of 4
# Due to odd number of people, last person will be in their own group
#


# 3. Initial Solution

names = ["Ariel Fogel", "Hethe Berg", "Premila Anand", "Brian Junio", 
	"John Akers", "Chandler Smith", "Gannon Curran", "Tony Leung", 
	"Arik Gadye", "Allison Reilly", "Justin Harnoss", "Morgan O'Leary", 
	"Puru Dahal", "Alex White", "Michele Murphy", "Matthew Darin", 
	"Steven Leu", "Patrick Reynolds", "Lauren Kroner", 	"Albert Alquisola", 
	"Ernie Salaza"]

# Work in progress 
def sorter(array)
  remainder = []
  x = []
  x = array.shuffle.each_slice(4).to_a
    if x.last.length <= 3 
      remainder = x[-1]
      x.pop
    end
    y =  x.zip(remainder)
    y.each {|i| i.flatten!.compact!}
end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


