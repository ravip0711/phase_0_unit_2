# U2.W4: Create Accountability Groups


# I worked on this challenge [with: Hethe Berg, we are actually from different cohort locations, I am in Chicago, and he is in San Francisco].

# 2. Pseudocode

# Create a variable name
# Value to array of names
# Create 6 empty arrays for the names
# Create the arrays so that they are random and separated into groups of 4
# Due to odd number of people, last person will be in their own group
# The remaining person will be put back into the database when code executes an order to make new groups


# 3. Initial Solution

names = ["Ariel Fogel", "Hethe Berg", "Premila Anand", "Brian Junio", "John Akers", "Chandler Smith", "Gannon Curran", "Tony Leung", "Arik Gadye", "Allison Reilly", "Justin Harnoss", "Morgan O'Leary", "Puru Dahal", "Alex White", "Michele Murphy", "Matthew Darin", "Steven Leu", "Patrick Reynolds", "Lauren Kroner", 	"Albert Alquisola", "Ernie Salaza"]

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

#We didnt know what else to refactor because we wrote the code very simple and easy to understand. Hethe had already done a large part of the code in another peer pairing session, but it was incomplete. We worked together to finish the problem, but spent a lot of time on it to make it work.






# 1. DRIVER TESTS GO BELOW THIS LINE

#I am very confused with how to write driver code. Especially in this example I don't know exactly what I would equal to determine true or false. I guess we can test if the array elements, names of the students, are all broken into groups of 4. I wouldn't be sure what to do with the remaining students.




# 5. Reflection 

#I would have not managed to get started with this challenge if it wasn't for Hethe. He was awesome at explaining things and how he structured the code. We first went through understanding what exactly we wanted to do. I think the easy part was figuring out what we are trying to achieve, the harder part was writing the syntax to do it. We did use a trial and error method, trying different iterators. It proved successful in the end as we played with the code, but I felt like we wasted a lot of time. I still have questions on creating blocks and understanding them. I feel like I've hit a wall with them and can't get my head across how they work. We used Ruby Docs as our best source to find something that would work. We had a hard time making the array do what we wanted. I did learn about the "flatten" iterator, how it is used to combine subarrays to arrays. Funny thing is, I'm the one who suggested it and we ended using it in our solution. I wasn't as familiar with Ruby Docs as my partner, but I solwly started to get a little grasp of it point out the idea of using flatten. I enjoyed working with someone on this, as both of our ideas were put together into completing this solution. What I found tedious was that we spent a lot of time looking up iterators to make our code work. I felt like it seemed like an easy solution but we just didn't know how to proceed with it. Another tedious aspect to this activity was writing the driver tests. I need more help with understand how to set up the driver test and use it. I understand how it is used to test code and the benefits of it, but don't really understand how to create the statements to set it up. I know you have to write certain code to help you check for true or false, but I don't get how to set it up.


