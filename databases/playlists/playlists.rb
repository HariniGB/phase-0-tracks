# PLAYLISTS 

# PSEUDOCODE 
# Need to create a database 'playlists.db'.
# Need to store datas about songlist, users, playlist and artists in tables.
# Create methods to create new playlist, user, song_list, and artist.
# Create methods to display the all the details from specific table.
# Create method to display specific columns from all the 4 tables.
# Run user-interface to get the input from the user and call respective method.

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("playlists.db")
db.results_as_hash = true

# Create playlist table
create_playlist_table = <<-SQL
  CREATE TABLE IF NOT EXISTS playlist(
    playlist_id INTEGER PRIMARY KEY,
    playlist_name VARCHAR(255)
  )
SQL
db.execute(create_playlist_table)

# Create artists table
create_artists_table = <<-SQL
  CREATE TABLE IF NOT EXISTS artists(
    artist_name VARCHAR(255) PRIMARY KEY,
    language TEXT
  )
SQL
db.execute(create_artists_table)

# Create songlist table
create_songlist_table = <<-SQL
  CREATE TABLE IF NOT EXISTS songlist(
    song_no INTEGER PRIMARY KEY,
    song_name TEXT,
    artist_name VARCHAR(255),
    playlist_id INTEGER,
    FOREIGN KEY (artist_name) REFERENCES artists(artist_name),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id)
  )
SQL
db.execute(create_songlist_table)

# Create users table
create_users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    users_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    is_artist BOOLEAN,
    playlist_id INTEGER,
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id)
  )
SQL
db.execute(create_users_table)

# Create methods to create new playlist.
def create_playlist(db,playlist)
	db.execute("INSERT INTO playlist (playlist_name) VALUES ('#{playlist}');")
end

# Create methods to create new user.
def create_user(db,first_name,last_name,is_artist,playlist_id)
	db.execute("INSERT INTO users (first_name,last_name,is_artist,playlist_id) VALUES  ('#{first_name}', '#{last_name}', '#{is_artist}', #{playlist_id});")
end

# Create methods to create new song.
def create_song(db,song_name,artist_name,playlist_id)
	db.execute("INSERT INTO songlist (song_name,artist_name,playlist_id) VALUES ('#{song_name}', '#{artist_name}', #{playlist_id});")
end

# Create methods to create new artist.
def create_artist(db,artist_name,language)
	db.execute("INSERT INTO artists (artist_name,language) VALUES ('#{artist_name}', '#{language}');")
end


# Create methods to display the all the details from specific table.

# Display all coulmns from the playlist table

def display_playlist(db)
	puts "The playlists are:"
	puts "------------------"
	list = db.execute("SELECT * FROM playlist;")
	list.each do |play_list|
		puts "Playlist ID: #{play_list['playlist_id']} ; Playlist Name: #{play_list['playlist_name']}"
	end
end

# Display the firstname and last name of the users from the users table
def display_users(db)
	puts "First name and last name of the users."
	puts "--------------------------------------"
	name = db.execute("SELECT * FROM users;")
	name.each do |user|
		puts "Fisrt name: #{user['first_name']} and last name: #{user['last_name']}. #{ user['is_artist'] == 'true' ? 'This user is an artist.' : 'This user is not an artist.' }"
	end
end

# Display the song name and the artist name from the  songs table
def display_songlist(db)
	puts "The songs are:"
	puts "--------------"
	songs = db.execute("SELECT * FROM songlist;")
	songs.each do |song|
		puts "SONG ID: #{song['song_no']}  SONG NAME: #{song['song_name']}."
	end
end


# Display all coulmns from the artists table
def display_artists(db)
	puts "The artists are:"
	puts "----------------"
	artists_list = db.execute("SELECT * FROM artists;")
	artists_list.each do |artist|
		puts "Artist's Name: #{artist['artist_name']} ; Language is #{artist['language']}"
	end
end

# Display the song name and the artist name from the  songs table
def display_song_with_artist(db)
	puts "The songs with artist's name"
	puts "----------------------------"
	songs = db.execute("SELECT * FROM songlist;")
	songs.each do |song|
		puts "SONG NAME: #{song['song_name']} ; ARTIST NAME: #{song['artist_name']}."
	end
end

# Display the users along with thier playlist name. We have to combine two tables and dispaly specific columns.
def display_users_playlists(db)
	puts "The users name and their playlist name"
	puts "--------------------------------------"
	users_playlist = db.execute("SELECT first_name,last_name,playlist_name FROM users INNER JOIN playlist USING (playlist_id) ORDER BY users.users_id;")
	users_playlist.each do |user|
		puts "Fisrt name: #{user['first_name']} ; Last name: #{user['last_name']} ; Playlist: #{user['playlist_name']}."
	end
end

# Display the songs along with thier playlist name. We have to combine two tables and dispaly specific columns.
def display_songs_and_playlists(db)
	puts "The song names with their playlist names"
	puts "----------------------------------------"
	song_playlist = db.execute("SELECT song_name,playlist_name FROM songlist INNER JOIN playlist USING (playlist_id) ORDER BY songlist.song_no;")
	song_playlist.each do |song|
		puts "The Song is #{song['song_name']} and it is under the playlist name : #{song['playlist_name']}."
	end
end


# Display the playlists, songs and it's artist names of each user with the user name. This combines all the 4 tables and displays selective 4 columns. 
def display_combined_history(db)
	puts "Each users with their playlists, songs and artist names of those songs"
	puts "----------------------------------------------------------------------"
	combine_history = db.execute("SELECT first_name,last_name,playlist_name,song_name,artist_name FROM songlist, users INNER JOIN playlist WHERE (songlist.playlist_id = playlist.playlist_id AND users.playlist_id = playlist.playlist_id) ORDER BY users_id;")
	combine_history.each do |user|
		puts "The user name is: #{user['first_name']} #{user['last_name']}"
		puts "Playlist name: #{user['playlist_name']}"
		puts "Song name: #{user['song_name']} and the artist of this song is #{user['artist_name']}"
		puts "====>>>>>>> NEXT USER <<<<<<<========"
	end
	puts "======>>>>>>>>> END <<<<<<<<<=========="
end


# USER INTERFACE 
# Run user-interface to get the input from the user and call respective method.


puts "Welcome to Saavan Playlist"
activity_value = 0
until (activity_value == 3)
	puts "--------------------------"
	activity = ["1. Do you want to see the playlists record?","2. Do you want to add new data to the playlists?","3. Do you want to exit?"]
	puts activity
	puts "Enter 1 / 2 / 3"
	activity_value = gets.chomp.to_i

	# Check whether the optio nis valid. Print the message not valid and ru the loop again.
	puts "Invalid input." if (activity_value != 1 && (activity_value != 2 && activity_value != 3))
	if activity_value == 1
		puts "What record do you want to see?"
		puts "OPTIONS:"
		data = ["1. All Playlists","2. All User's Names","3. All Songs","4. All Artists", "5. Each users with their playlists", "6. The songs and its artist's name","7. The songs grouped under each playlists", "8. Combined history of playlists, users, songs and the artists."]
		puts data;
		puts "Enter the option number (1 - 8):"
		data_to_display = gets.chomp.to_i
		case data_to_display 
		when 1
			display_playlist(db)
		when 2
			display_users(db)
		when 3
			display_songlist(db)
		when 4
			display_artists(db)
		when 5
			display_users_playlists(db)
		when 6
			display_song_with_artist(db)
		when 7
			display_songs_and_playlists(db)
		when 8
			display_combined_history(db)
		else
			puts "Sorry! Invalid option."
		end
	elsif activity_value == 2
		puts "What data do you want to inset?"
		data = ["1. New playlist","2. New song","3. New artist","4. New user"]
		puts data
		puts "Enter the option number (1 - 4):"
		data_to_display = gets.chomp.to_i
		case data_to_display
		when 1
			puts "Enter the playlist name:"
			playlist_name = gets.chomp
			create_playlist(db,playlist_name)
		when 2
			puts "Enter the song name:"
			song_name = gets.chomp
			display_artists(db)
			puts "Select and enter the artist name from the list / Enter the artist name:"
			artist_name = gets.chomp
			display_playlist(db)
			puts "Select and enter the playlist id from the above list:"
			playlist_id = gets.chomp.to_i
			create_song(db,song_name,artist_name,playlist_id)
		when 3
			puts "Enter the artist's name"
			artist_name = gets.chomp

			# Checking whether we have same artist name in the database. artist_name is a primary key in the artists table.
			artists = db.execute("SELECT artist_name FROM artists;")
			artists.each do |artist|
				if artist['artist_name'].upcase == artist_name.upcase
					puts "The artist name already exist!"
					exit
				end
			end
			puts "Enter the language:"
			language = gets.chomp
			create_artist(db,artist_name,language)
		when 4
			puts "Enter the user's first name:"
			first_name = gets.chomp
			puts "Enter the user's last name:"
			last_name = gets.chomp
			is_artist = 0
			until is_artist == true || is_artist == false
				puts "Whether this user is an artist or not? (Enter true or false)"
				is_artist = gets.chomp
				if is_artist.upcase == "TRUE"
					is_artist = true
				elsif is_artist.upcase == "FALSE"
					is_artist = false
				else
					puts "Invalid option."
				end
			end
			display_playlist(db)
			puts "Select and enter the playlist id from the above list:"
			playlist_id = gets.chomp.to_i
			create_user(db,first_name,last_name,is_artist,playlist_id)
		else
			puts "Sorry! Invalid option."
		end
	elsif  activity_value == 3
		puts "You have ended successfully!"
	end
end
