class Book
  
  def self.all
    CONNECTION.execute("SELECT * FROM books;")
  end
  
  def self.add
    CONNECTION.execute("INSERT INTO students ()")
  end
  
  
end