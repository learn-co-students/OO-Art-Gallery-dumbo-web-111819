require_relative '../config/environment.rb'


# gallery initialize(name, city)
moma = Gallery.new("MOMA", "New York")
de_young = Gallery.new("De Young", "San Francisco")
met = Gallery.new("MET", "New York")
louvre = Gallery.new("Louvre", "Paris")

# artist initialize(name, years_experience)
picasso = Artist.new("Picasso", 1)
van_gaugh = Artist.new("Van Gaugh", 2)
dali = Artist.new("Dali", 3)

# painting initialize(title, price, gallery, artist)
flower = Painting.new("Flower", 3, de_young, van_gaugh)
house = Painting.new("The little house", 2,moma, picasso)
sky = Painting.new("Blue sky", 1, louvre, dali)
horizon = Painting.new("Horizon", 6,louvre, picasso)
rage = Painting.new("Human rage", 5,met, dali)
distortion = Painting.new("Distortion", 4,de_young, picasso)


binding.pry

puts "Bob Ross rules."
