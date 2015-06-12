class Book
  
  def initialize(book_id)
    @book_id = book_id
  end
  
  def self.all
    CONNECTION.execute("SELECT * FROM books;")
  end
  
  def self.add(name, genre, location, quantity)
    CONNECTION.execute("INSERT INTO books (name, genre, location, quantity) VALUES ('#{name}', #{genre}, #{location}, #{quantity});")
  end
  
  def change_name(new_book_name)
    CONNECTION.execute("UPDATE books SET name = '#{new_book_name}' WHERE book_id = #{@book_id};")
  end

  def
  end
  
end