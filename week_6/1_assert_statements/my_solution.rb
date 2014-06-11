# U2.W6: Testing Assert Statements

# I worked on this challenge [By Myself].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# The assert method raises an error when the yield is not correct. Yield is basically telling the code snippet to run the block which is at the bottom. Since a condition has been made that name = "bettysue", so the first block will run true making it pass, but the second block will not pass because it is false. It will then raise the error "Assetion failed".



# 3. Copy your selected challenge here

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new("Cannot have less than 1 side")
    else
        @sides = sides
    end
  end  
  
  def sides
    @sides
  end
  
  def roll
    return rand(1..@sides)
  end
  
end 



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed" unless yield
end

sides = 6
assert {sides == 6}
assert {sides == 5}




# 5. Reflection

# What parts of your strategy worked? What problems did you face?
# I think this activity was pretty easy with the assert method. I wasn't sure if the code would recognize sides or @sides. Didn't really know which one to pick, just tried it out.

# What questions did you have while coding? What resources did you find to help you answer them?
# I had questions on how to make the assert driver test code more complex. I did the basic check on making sure if the dice I picked and gave it 6 sides, that I would return back 6 if I called the method for sides. 

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I haven't been able to understand why we need to use assert methods for driver test code. Why can't we just continue to use for example, sides == 6? I was also trying to make an assert driver test for the roll method but I couldn't figure out how to make it work.

# Did you learn any new skills or tricks?
#I just learned how to use the assert method as a driver test code. Not sure exactly how it will help compared to the regular driver test code used.

# How confident are you with each of the Learning Competencies?
#I am pretty confident with the learning competencies atleast for simple assert methods.

# Which parts of the challenge did you enjoy?
#I enjoyed creating the assert method and checking if it works. I used trial and error method to make sure what will work.

# Which parts of the challenge did you find tedious?
#I found it tedious that I knew what I wanted to test, but I couldn't figure out how to do it. For example, I wanted to create an assert test for my roll method, but I couldn't figure out how to do it.


