class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    painting_array = Painting.all.map do |painting|
      painting.price
    end
    painting_array.sum
  end
 




end #end of class

##### TO DO #####


##### DONE #####

# * `Painting.all`
#     * Returns an `array` of all the paintings
#   * `Painting.total_price`
#     * Returns an `integer` that is the total price of all paintings



