# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
punta_grill = Restaurant.new(name: 'Punta Grill', category: 'french', address: 'Las Mercedes, Caracas')
punta_grill.save
taiko = Restaurant.new(name: 'Taiko', category: 'japanese', address: 'Av. Rio de Janeiro, Caracas')
taiko.save
comme_chez_soi = Restaurant.new(name: 'Comme Chez Soi', category: 'belgian', address: 'Place de Rouppe, Brussels')
comme_chez_soi.save
gioia = Restaurant.new(name: 'Gioia', category: 'italian', address: 'Chueca, Madrid')
gioia.save
buen_gusto = Restaurant.new(name: 'El Buen Gusto', category: 'chinese', address: 'Delicias, Madrid')
buen_gusto.save
review_p = Review.new(content: 'Buena carne, buen lugar', rating: 4, restaurant: punta_grill)
review_p.save

puts "#{punta_grill.name} was successfully created"
