# PLAYLISTS 

# PSEUDOCODE 
# Need to create a database 'playlists.db'.
# Need to store datas about song_list, users, playlist_track and artists.
# Crete methods to create new playlist, user, song_list, and artist.
# Create methods to display the all the details from specific table.
# Create method to display specific columns from all the 4 tables.
# Run user-interface to get the input from the user and call respective method.

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("playlists.db")
db.results_as_hash = true
