class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def all_paintings
    # binding.pry
    Painting.all.select{|paints|
      paints.artist == self
    }
  end

  def all_galleries
      all_paintings.map{|ele|
      ele.gallery
     }
  end

  def all_cities
    binding.pry
      all_galleries.map{|cities|
      cities.city
    }
  end

  def self.total_experience
      # binding.pry
      Artist.all.map{|ele|
        ele.years_experience
      }.sum
  end

  def self.most_prolific
        # binding.pry
      self.all.max_by { |artist|
        artist.all_paintings.length / artist.years_experience
        }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)

  end


  def self.all
    @@all
  end
end
