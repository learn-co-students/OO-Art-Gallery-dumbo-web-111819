require_relative '../config/environment.rb'


andy = Artist.new("Andy Warhol", 45)
leo = Artist.new("Leo Davinci", 56)
pablo = Artist.new("Pablo Picasso", 95)
rem = Artist.new("Rembrandt", 70)

met = Gallery.new("The Metropolitan Museum of Art", "New York City")
louvre = Gallery.new("Louvre Museum", "Paris")
tate = Gallery.new("Tate Modern", "London")
rijk = Gallery.new("Rijksmuseum", "Amsterdam")

#title, price, artist, gallery
mona_lisa = Painting.new("Mona Lisa", 1000000000, leo, louvre)
boy_w_flower = Painting.new("Boy with Flower", 50068000, andy, tate)
the_actor = Painting.new("The Actor", 65000000, pablo, met)
aristotle = Painting.new("Aristotle with a Bust of Homer", 62000000000, rem, met)
jewish_bride = Painting.new("The Jewish Bride", 100504394, rem, rijk)




binding.pry

puts "Bob Ross rules."
