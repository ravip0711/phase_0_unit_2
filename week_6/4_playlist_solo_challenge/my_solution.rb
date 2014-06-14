# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [By myself].


# Pseudocode
#Create two separate classes. One will be Playlist and one will be Song

#Playlist class to include:
#Create a #add method so the user can add albums to the playlist
#create a #num_of_tracks method to show the number of tracks in an album
#Create a #remove method with a parameter to remove a song from the playlist
#Create a #play_all method that will play all the songs in the playlist
#create a #display method

#Song class to include:
#Create a #play method so the user can play the song

# Initial Solution

# class Playlist

#   def initialize(*albums)
#     @my_playlist = [*albums]
#   end

#   def add(*albums)
#     @my_playlist.push(*albums)
#   end

#   def num_of_tracks
#     @my_playlist.length
#   end

#   def remove(delete_album)
#     @my_playlist.delete(delete_album)
#   end

#   def play
#     @my_playlist
#   end

#   def play_all
#     @my_playlist
#   end

#   def display_songs
#     @my_playlist
#   end

#   def includes?(check_for_track)
#   end
# end

# class Song

#   def initialize(*tracks)
#     @tracks = tracks
#   end

#   def play
#     @tracks
#   end
# end


# Refactored Solution

class Playlist

  def initialize(*albums)
    @the_playlist = *albums
  end

  def add(*add_albums)
    @the_playlist.push(*add_albums)
  end

  def num_of_tracks
    @the_playlist.length
  end

  def remove(delete_album)
    @the_playlist.delete(delete_album)
  end

  def play
    @the_playlist
  end

  def play_all
    @the_playlist
  end

  def display_songs
    @the_playlist
  end

  def includes?(check_for_track)
  end
end

class Song

  def initialize(*tracks)
    @tracks = *tracks
  end

  def play
    @tracks
  end
end

#I fixed up the code a little bit by removing and adding names so that it flows better and you can understand the elements. I primarily changed the parameter names to include many * so that it can be given more than 1 input.




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia") #creating albums with songs
world_so_cold = Song.new("World So Cold", "Three Days Grace") #creating albums with songs
going_under = Song.new("Going Under", "Evanescence") #creating albums with songs
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under) #adding the albums into the playlist
 
lying_from_you = Song.new("Lying From You", "Linkin Park") #creating a new album
angels = Song.new("Angels", "Within Temptation") #creating a new album
 
my_playlist.add(lying_from_you, angels) #adding two albums into the playlist
p my_playlist.num_of_tracks == 5 #shows the number of tracks in the playlist
going_under.play #playing a album
my_playlist.remove(angels) #removing an album
p my_playlist.includes?(lying_from_you) == true #having trouble clearing this error to make it true
my_playlist.play_all #playing all the songs
my_playlist.display #showing all the songs in the playlist



# Reflection 

# What parts of your strategy worked? What problems did you face?
#It took me numerous times to understand this challenge. I tried Psuedocode first, but then confused myself on which methods go in which class. Then I went down into the driver code to see the methods and figure it out from there. I managed to change up some of the method names so they would correlate to the driver test code. I also got an idea of where each method should go. Problems that I still had were understanding the correlation of albums and tracks within the code. I could figure out how to make them work together. I also had a problem with couple of the methods like #play, #play_all, #display_songs. I wasn't sure what there purpose was in the code besides outputting what is in the playlist. I also had problems with figuring out the #num_of_tracks method. I did make the method work but it comes up as nil in the terminal. I couldn't get it to work, as I had problems with accessing tracks within albums. Got confused about what that method outputted because theirs more than 5 tracks with all the albums added so that driver test would be wrong then. Either the number of tracks in the driver code is wrong, or that method is actually refering to the number of albums not number of tracks.

# What questions did you have while coding? What resources did you find to help you answer them?
#I had questions on how to distinguish the ablums vs the songs in the classes. I couldn't find any resources on it because it had to do with mentally thinking how it all functions together. I kind of even considered using hashes and having the key be the album and values would be the tracks but dismissed the idea because I'm not too comfortable with manipulating hashes.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
#I realized I am having trouble with some minor conceptual stuff. I couldn't understand how to create albums and put songs within the albums and switch back and forth with them with the methods.

# Did you learn any new skills or tricks?
#I did learn about using the * to input numerous parameters so you can list many of them.

# How confident are you with each of the Learning Competencies?
#I am pretty confident in the learning competencies. I know how to make classes and which type of variables to use such as instance variables. I was just confused on the elements of the challenge itself, what it is asking me to do and how to do it.

# Which parts of the challenge did you enjoy?
#I enjoyed looking at the driver test code which were like hints on how to make the classes and methods. It was really helpful and made my job easier. I quickly made the classes until I got confused.

# Which parts of the challenge did you find tedious?
#I found that parts of the challenge were tedious such as the methods. There are so many methods and I understand the purpose of many of them, but a few were just random and the challenge did not specify what we needed to do with them. For example, the #play, #play_all, and #display_songs I felt were all the same. They are all refering to the tracks in the playlist. I wasn't sure if there was suppose to be a distingushment between the three.