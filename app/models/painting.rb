class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(artist, gallery, title, price)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    # * Returns an `integer` that is the total price of all paintings
    
    self.all.sum do |painting_instance| painting_instance.price end
    
  end

end



