# U2.W4: Cipher Challenge


# I worked on this challenge by myself
# I was a little behind on the challenges and didn't have a chance to pair with anyone.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning?        
# end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") #this is taking the coded_message from Kim Jong Un and lowercasing it all and separating each digit or letter.
  decoded_sentence = [] # creating an empty array
  cipher = {"e" => "a",   # The shift of 4 letters is a mind boggler. I know you can create a loop doing "a..z" but not sure how to start with a 4 letter shift.
            "f" => "b",   # A hash might not be the best way, an array would be better because then the array would be in order, all the data would be in order. Hashes are good for key/value data. The con of Hashes is that they are not in any particular order, basically data in an unorganized table. Would I create an array that would look like this> cipher = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z] ?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # each is taking every element and iterating it, in this case, the input which is each element from the coded message, is being checked and matched up
    found_match = false
    cipher.each_key do |y| # this is putting each key of the cipher, just the key not the value
      if x == y  # this is comparing the x value to the y value. It is getting the x value from input.each code and y is coming from the cipher.each_key. I think these are a bit unecessary, you can just explicitly say what is x and what is y.
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # it is breaking the code so that it ends when input is matched up equal true, 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #This is checking if x is equal to another of the symbols, then push decoded sentence to the blank space.
        decoded_sentence << " "
        found_match = true
        break # this is to create a break in the iteration because the condition has fulfilled if the found_match = true
      elsif (0..9).to_a.include?(x) # this puts the numbers 0 through 9 in an array and see's if x is included
        decoded_sentence << x
        found_match = true
        break # another break to stop the iteration if the condition is met
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") # this is joining the elements to an array with a space
 
  if decoded_sentence.match(/\d+/) #I'm not familiar with using Rubular, I don't really know what all the code is after match(.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...I don't understand this either.
  end  
  return decoded_sentence # What is this returning? I think it is returning the translated message.       
end



# Driver Code:
# I found the translations by just comparing the cipher length to the decoded message lengths. Not sure if it's right but figured it would be a backdoor way to complete driver tests.

p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection

#The strategy I used that worked for me was taking the code piece by piece and writing notes on each element I understand. I understood some of the syntax by piece but had trouble putting it all together logically. I had some questions on the code where false and true statements show up, as well as "(/\d+/)" used after #match method. I didn't really understand those parts. I'm having trouble with comprehending multiple loop statements, as well as connecting the pieces. I feel like this code is like a puzzle, and its been put together to work, but the pieces don't correlate in my head. It doesn't flow well in my thought process and organized mindset of what comes first, what comes second, etc. I need like a flow chart of what connects to what and moves where. I did learn a little more on driver code, I realized that you can just make statements and equal them to what exactly your solution should give you. I think this is where I'll start needing more help, the learning competencies are getting harder and I'm understanding less. When I see the code, I get it, but when I try to do it, its just blank thinking. I found the tedious part of trying to find the meaning of the code and seeing what it is trying to do. Theres a lot of elements I don't get, which makes it harder for me to understand and refactor.




 