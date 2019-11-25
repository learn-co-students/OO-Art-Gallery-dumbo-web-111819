class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize( name, city)
    @name = name
    @city = city
    
    @@all << self
  end

  def self.all 
    @@all
  end

  def paintings
#     * Returns an `array` of all paintings in a gallery
      Painting.all.select{|painting_instance| painting_instance.gallery == self}
  end

  def artists
#     * Returns an `array` of all artists that have a painting in a gallery
      self.paintings.map{|painting_instance| painting_instance.artist}

  end


  def artist_names
#     * Returns an `array` of the names of all artists that have a painting in a gallery
      self.artists.map{|artist_instance| artist_instance.name}

  end

  def most_expensive_painting
#     * Returns an `instance` of the most expensive painting in a gallery
      self.paintings.max_by {|painting_instance| painting_instance.price}

  end
end


