require "sqlite3"
require_relative "book.rb"
require_relative "genre.rb"
require_relative "location.rb"

CONNECTION = SQLite3::Database.new("inventory.db")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY, name TEXT, genre_id INTEGER, location_id INTEGER, quantity INTEGER NOT NULL, FOREIGN KEY(location_id) REFERENCES locations(id), FOREIGN KEY(genre_id) REFERENCES genres(id));")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS genres (id INTEGER PRIMARY KEY, genre TEXT);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS locations (id INTEGER PRIMARY KEY, location TEXT);")

# Get results as an Array of Hashes.
CONNECTION.results_as_hash = true

# ------------------------------------------------------------
#
# puts "Hello! \n What would you like to do?"
#
# puts "\n Add a book? (Yes/No)"
# answer = gets.chomp.downcase
#
# if answer != "no"
#   puts "What's the name of the book?"
#   book_name = gets.chomp
#
#   puts "What genre is the book?"
# end