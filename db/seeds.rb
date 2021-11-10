# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
ciao_ragazzi = { name: 'Ciao Ragazzi', address: 'Türkenstrasse 15, München Maxvorstadt', category: 'italian'}
muggel = { name: 'Muggel', address: 'Oberkasslerstrasse 32, Düsseldorf Oberkassel', category: 'french'}
tambosi = { name: 'Tambosi', address: 'Odensplatz 67, München Maxvorstadt', category: 'belgian' }
brenners = { name: 'Brenners', address: 'Maximilianstrasse 12, München Maxvorstadt', category: 'french' }
sansibar = { name: 'Sansibar', address: 'Breuningerplatz 90, Düsseldorf Königsallee', category: 'chinese' }

[ciao_ragazzi, muggel, tambosi, brenners, sansibar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
