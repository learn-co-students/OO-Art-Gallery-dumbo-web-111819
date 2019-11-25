class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    # binding.pry
     Painting.all.select{|gal|
        gal.gallery == self
      }
  end

  def artists
# binding.pry
  self.paintings.select{|painting|
    painting.artist
  }
  end

  def artist_names
    # binding.pry
    self.artists.map{|ele|
      ele.artist.name
    }

  end

  def most_expensive_painting
    paintings.max_by{|ele|
      ele.price
    }

  end


  def self.all
    @@all
  end
end
