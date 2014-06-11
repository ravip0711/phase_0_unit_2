# U2.W6: Drawer Debugger


# I worked on this challenge [By myself].


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class? #not sure

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item) #used to push items into the contents array
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? Pop is removing the item. I'm not sure if its removing the item used in the parameter or just the last item in the @contents.
    @contents.delete(item)
  end

  def dump  # what should this method return? This method should remove all the items in the drawer.
    @contents.clear # I added this method to remove all the elements in the @contents array
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_reader :type

# Are there any more methods needed in this class? #not sure

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    "needs to be cleaned" #was not sure how to put the item that is called on the .eat method in this return statement. 
  end

  def dishwasher #added this method to put items that are not clean
    "#{type} needs to be put in the dishwasher"
  end
end

knife1 = Silverware.new("knife")#1 way to add knife

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) #1 way to add knife
silverware_drawer.add_item(Silverware.new("spoon"))#second way to add items
silverware_drawer.add_item(Silverware.new("fork")) #second way to add items
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should return nothing because we used the dump method to dump all the contents of the drawer.

fork = Silverware.new("fork") #set fork as a new object inside silverware
silverware_drawer.add_item(fork) #set fork as a new item added to the silverware_drawer
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat
silverware_drawer.view_contents

#BONUS SECTION
#puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed" unless yield
end

silverware_drawer = Drawer.new
silverware_drawer.add_item(Silverware.new("spork"))
assert {silverware_drawer == ["spork"]} #Had trouble getting this to work. I wanted to test to see if "spork" has been added to the array. How can we test to see if we got an empty array?


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
#I first tried to read through everything to get a big picture on what this code was about. I understood some elements and some I couldn't follow through. I then decided to break up the code and write notes on what each method is doing so I can refer back to it easily. I faced the problem of forgetting what attached to what. The names start mixing up when your using the same keywords, so I had problems with keeping track of the variable names mixed with method names.

# What questions did you have while coding? What resources did you find to help you answer them?
#I had a question about a method that uses a parameter and that parameter is assigned to another variable with a method. It was this line that I could not understand: def remove_item(item = @contents.pop). I was not sure if it was an error or the syntax was right by my understanding of it was wrong. I also had questions about how to create driver tests where I can see if an array returns empty.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I am still having trouble with driver tests. I do understand the assert driver tests, but get stuck on how to write my own and impliment them.

# Did you learn any new skills or tricks?
#I did learn a new method called .clear. This will clear all the elements within an array. I used it for the dump method in this code.

# How confident are you with each of the Learning Competencies?
# I am pretty confident with the learning competencies. I fixed majority of the errors, but just wasn't sure if it was the right way. I used some trial and error ways to check if the error cleared. I do understand how to look for errors and find clues in them that will help me clear the error.

# Which parts of the challenge did you enjoy?
#I did enjoy going through the code and learning about how everything falls together. I now know how a ruby code can be used. I like to learn from examples and this example was a pretty good translation to something in real life. This example was about having silverware in a drawer and keeping track of what goes in and out of the drawer. I actually enjoyed fixing the errors.


# Which parts of the challenge did you find tedious?
#The tedious part was going through the fairly long code (atleast the code I have seen so far) and trying to make sense of it all. There were some code elements that did not make sense to me. I also found it tedious that if I cleared some of the errors, the errors I could not clear I would just have to resort to trial and error. I tested the code until it worked.




