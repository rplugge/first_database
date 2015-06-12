class Book
  
  def self.all
    CONNECTION.execute("SELECT * FROM books;")
  end
  
  def self.add(name, genre, location, quantity)
    CONNECTION.execute("INSERT INTO students (name, genre, location, quantity) VALUES ('#{name}', )")
  end
  
  
end