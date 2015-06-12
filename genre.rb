class Genre
  
  def self.all
    CONNECTION.execute("SELECT * FROM genres;")
  end
  
  def self.add(genre)
    CONNECTION.execute("INSERT INTO genres (genre) VALUES ('#{genre}');")
  end
  
  
end