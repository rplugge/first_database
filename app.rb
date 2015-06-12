require "sqlite3"
require_relative "books.rb"
require_relative "genre.rb"
require_relative "location.rb"

CONNECTION = SQLite3::Database.new("inventory.db")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS books (book_id INTEGER PRIMARY KEY, name TEXT, genre INTEGER, location INTEGER, quantity INTEGER NOT NULL, FOREIGN KEY(location) REFERENCES locations(location_id), FOREIGN KEY(genre) REFERENCES genres(genre_id));")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS genres (genre_id INTEGER PRIMARY KEY, genre TEXT);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS locations (location_id INTEGER PRIMARY KEY, location TEXT);")

# Get results as an Array of Hashes.
CONNECTION.results_as_hash = true