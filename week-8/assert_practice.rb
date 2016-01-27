# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin

DEFINE 'assert' method, takes no arguments
	RAISE EXCEPTION message "Assertion failed!"
	UNLESS
	'assert' method block is TRUE

CREATE var 'name'
	SET to 'bettysue'

CALL 'assert' method
	SET IN BLOCK
		CHECK IF name is equal to string 'bettysue'
PASS 'assert' method

CALL 'assert' method
	SET IN BLOCK
		CHECK IF name is equal to string 'billybob'
FAIL 'assert' method
	RAISE EXCEPTION with MESSAGE 'Assertion failed!'

=end


# 3. Copy your selected challenge here
	# Create a Playlist from Driver Code

	# I worked on this challenge [by myself].
	# I spent [0.6] hours on this challenge.


	# Pseudocode
=begin
		I sort of... didn't. I didn't pseudocode.
		I went in and 'trial and errored' my way through the challenge.
		I know not good practice, but it's the truth.
		I think going back and writing pseudocode after the fact kind of defeats
		the purpose of pseudocoding in the first place so I won't do that.
=end

	# Initial Solution
	class Song
		def initialize(song_name,band)
			@song_name = song_name
			@band = band
		end

		def play
			p "Playing... '#{@song_name}' by #{@band}"
			10.times do
				print "."
				sleep(0.1) 
			end
		end

	end

	class Playlist
		def initialize(song1,song2,song3)
			@playlist_array = [] unless @playlist_array
			@playlist_array.push(song1,song2,song3)
		end

		def add(song1,song2)
			@playlist_array.push(song1,song2)
		end

		def num_of_tracks
			return @playlist_array.length
		end

		def remove(song)
			@playlist_array.delete(song)
			@playlist_array.each do | i |
				puts i.instance_variable_get(:@song_name)
			end
		end

		def includes?(song)
			@playlist_array.each do | i |
				if i == song 
					return true 
				end
			end
		end

		def play_all
			@playlist_array.each do | i |
				song = i.instance_variable_get(:@song_name)
				band = i.instance_variable_get(:@band)
				puts "Playing... '#{song}' by #{band}"
				10.times do
					print "."
					sleep(0.1)
				end
				puts
			end
		end

		def display
			puts "==========="
			puts "PLAYLIST"
			puts "==========="
			@playlist_array.each do | i |
				song = i.instance_variable_get(:@song_name)
				band = i.instance_variable_get(:@band)
				puts "'#{song}' by #{band}"
			end
		end

	end


	# Refactored Solution






	# DRIVER CODE AND TESTS GO BELOW THIS LINE
	one_by_one = Song.new("One by One", "Sirenia")
	world_so_cold = Song.new("World So Cold", "Three Days Grace")
	going_under = Song.new("Going Under", "Evanescence")

	my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

	lying_from_you = Song.new("Lying From You", "Linkin Park")
	angels = Song.new("Angels", "Within Temptation")

	my_playlist.add(lying_from_you, angels)
	p my_playlist.num_of_tracks == 5
	going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
	my_playlist.remove(angels)
	p my_playlist.includes?(lying_from_you) == true
	my_playlist.play_all
	my_playlist.display




	# Reflection
=begin
	Q: What concepts did you review or learn in this challenge?
	A: I got quite a bit of practice with creating classes, manipulating
	   instance variables, and it just felt overall pretty good to 'build'
	   something from somewhat scratch with the knowledge I've gained thus.

	Q: What is still confusing to you about Ruby?
	A: I don't know about confusing, but I know there's still A LOT of about
	   Ruby that I've still got to learn. What really took me the longest time
	   with this challenge was just breaking ground, getting started. The blank
	   slate always gives me pause and takes me a bit to organize my mind. This
	   isn't really Ruby related but a me issue.

	Q: What are you going to study to get more prepared for Phase 1?
	A: I'm gonna try and wrap my mind around recursion and overall just get more
	   practice by writing more little things like this playlist challenge. I'm
	   also using sites like CodinGame for funsies.


=end

# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection