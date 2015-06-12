class Location
  
  def self.all
    CONNECTION.execute("SELECT * FROM locations;")
  end
  
  def self.add(location)
    CONNECTION.execute("INSERT INTO locations (location) VALUES ('#{location}');")
  end
  
  
end