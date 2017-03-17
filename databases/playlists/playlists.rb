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
require_relative 'playlists_user_interface'

# create SQLite3 database
db = SQLite3::Database.new("playlists.db")

# Create playlist table
create_playlist_tabel = <<-SQL
  CREATE TABLE IF NOT EXISTS playlist(
    playlist_id INTEGER PRIMARY KEY,
    playlist_name VARCHAR(255)
  )
SQL
db.execute(create_playlist_tabel)

# Create artists table
create_artists_tabel = <<-SQL
  CREATE TABLE IF NOT EXISTS artists(
    artists_name VARCHAR(255) PRIMARY KEY,
    language TEXT
  )
SQL
db.execute(create_artists_tabel)

# Create songlist table
create_songlist_tabel = <<-SQL
  CREATE TABLE IF NOT EXISTS songlist(
    song_no INTEGER PRIMARY KEY,
    song_name TEXT,
    artists_name VARCHAR(255),
    playlist_id INTEGER,
    FOREIGN KEY (artists_name) REFERENCES artists(artists_name),
    FOREIGN KEY (playlist_id) REFERENCES playlist_track(playlist_id)
  )
SQL
db.execute(create_songlist_tabel)

# Create users table
create_users_tabel = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    users_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    is_artist BOOLEAN,
    playlist_id INTEGER,
    FOREIGN KEY (playlist_id) REFERENCES playlist_track(playlist_id)
  )
SQL
db.execute(create_users_tabel)

# Create methods to create new playlist.
def create_playlist(db,name)
	db.execute("INSERT INTO playlist VALUES (playlist_name)", [playlist_name])
end

# Create methods to create new user.
def create_user(db,first_name, last_name, is_artist,playlist_id)
	db.execute("INSERT INTO users VALUES (first_name,last_name,is_artist,playlist_id)", [first_name, last_name, is_artist,playlist_id])
end

# Create methods to create new song.
def create_song(db,song_name, artists_name, playlist_id)
	db.execute("INSERT INTO songlist VALUES (song_name,artists_name,playlist_id)", [song_name, artists_name, playlist_id])
end

# Create methods to create new artist.
def create_artist(db,artists_name,language)
	db.execute("INSERT INTO artists VALUES (artists_name,language)", [artists_name, language])
end


# Create methods to display the all the details from specific table.

# Display all coulmns from the playlist tabel
def display_playlist
	puts "The playlists are:"
	puts "----------------"
	return db.execute("SELECT * FROM playlist")
end

# Display the firstname and last name of the users from the users tabel
def display_users
	puts "First name and last name of the users."
	puts "-------------------------------------"
	name = db.execute("SELECT * FROM users")
	name.each do |user|
		puts "Fisrt name: #{user['first_name']} and last name: #{user['last_name']}."
	end
end

# Display the song name and the artist name from the  songs tabel
def display_songlist
	puts "The songs are:"
	puts "--------------"
	songs = db.execute("SELECT * FROM songlist")
	songs.each do |song|
		puts "SONG NAME: #{song['song_name']} ; ARTIST NAME: #{'artists_name'}."
	end
end

# Display all coulmns from the artists tabel
def display_artists
	puts "The artists are:"
	puts "----------------"
	return db.execute("SELECT * FROM artists")
end























