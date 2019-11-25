class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    artist_array = self.all.map do |artist|
      artist.years_experience
    end
    artist_array.sum
  end

  def self.most_prolific
    self.all.max do |artist|
      artist.paintings.length / artist.years_experience
      #iterate through the Artist class. Get the artist paintings, get how many we have and divide it by the artist year of experience.
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end # end of class


##### TO DO #####


##### DONE #####

# * `Artist.all`
#     * Returns an `array` of all the artists
#   * `Artist#paintings`
#     * Returns an `array` all the paintings by an artist
#   * `Artist#galleries`
#     * Returns an `array` of all the galleries that an artist has paintings in
#   * `Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in
#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists
#   * `Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
#   * `Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.


