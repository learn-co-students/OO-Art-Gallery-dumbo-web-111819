require_relative '../config/environment.rb'


a1 = Artist.new('rob', 20)
a2 = Artist.new('ray', 2)
a3 = Artist.new('rosa', 23)
a4 = Artist.new('ronald', 7)

g1 = Gallery.new('angel','toronto')
g2 = Gallery.new('angel','toronto')
g3 = Gallery.new('flower','NYC')
g4 = Gallery.new('canvas','LA')
g5 = Gallery.new('chocolate','LA')
g6 = Gallery.new('chocolate','LA')


p1 = Painting.new(a1, g1,'super title', 45)
p2 = Painting.new(a2, g2,'ultra title', 97)
p3 = Painting.new(a3, g2,'dumb title', 70)
p4 = Painting.new(a4, g3,'amazing', 80)
p5 = Painting.new(a4, g4,'lucky', 660)
p6 = Painting.new(a2, g5,'i got this', 839)





binding.pry

puts "Bob Ross rules."
