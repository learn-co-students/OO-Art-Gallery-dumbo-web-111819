require_relative '../config/environment.rb'

#artist info name, years_experience
sam = Artist.new("sam", 10)
ken = Artist.new("ken", 20)
ben = Artist.new("ben", 5)

#gallery ino name, city

yolo = Gallery.new("yolo", "new york")
canvas = Gallery.new("canvas", "ohio")

#painting info
# :title, :price, :artist, :gallery


forest = Painting.new("forest", 100, sam, yolo)
plants = Painting.new("plants", 200, ken, yolo)
rain = Painting.new("rain", 300, ken, canvas)

binding.pry

puts "Bob Ross rules."
