class Book
  
  def initialize(book_id)
    @book_id = book_id
  end
  
  def self.all
    CONNECTION.execute("SELECT * FROM books;")
  end
  
  def self.add(name, genre, location, quantity)
    CONNECTION.execute("INSERT INTO books (name, genre_id, location_id, quantity) VALUES ('#{name}', #{genre}, #{location}, #{quantity});")
  end
  
  def change_name(new_book_name)
    CONNECTION.execute("UPDATE books SET name = '#{new_book_name}' WHERE id = #{@book_id};")
  end
  
  def change_location(new_location)
    CONNECTION.execute("UPDATE books SET location_id = #{new_location} WHERE id = #{@book_id}")
  end
  
  def delete
    CONNECTION.execute("DELETE FROM books WHERE id = #{@book_id};")
  end
  
end