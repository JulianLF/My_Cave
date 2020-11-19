# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating 3 new users"

Chuck = User.new(username: "Chuck Norris", first_name: "Chuck", last_name: "Norris", email:"godlike@gmail.com", password: "iamsecurity", admin: true)
JC = User.new(username: "JeanCastex75", first_name: "Jean", last_name: "Castex", email:"lovemanu@gmail.com", password: "manuforever")
Heenok = User.new(username: "XxLeRoiHeenokxX", first_name: "Roi", last_name: "Heenok", email:"lovemyself@gmail.com", password: "meforever")
Chuck.save
JC.save
Heenok.save
puts "Jean Castex & Roi Heenok has been created"
puts "Chuck Norris is now an admin"
puts "----------"
puts "Creating 4 categories"

beer_category = Category.new(name: "beer")
wine_category = Category.new(name: "wine")
liquors_category = Category.new(name: "liquors")
champagne_category = Category.new(name: "champagne")

beer_category.save
wine_category.save
liquors_category.save
champagne_category.save

puts "Created beer, wine, liquors and champagne categories"
puts "----------"
puts "Creating 4 products"

biere_de_mamie = Product.new(name: "Bière de ma grand mère", description: "Une bière faite avec amour, comme ma grand mère la faisait", price: 18, user_id: 3, category_id: 1)
vin_de_noah = Product.new(name: "Vin de Noah", description: "Pour enfiler les chaussures à bascule", price: 12, user_id: 3, category_id: 2)
champ = Product.new(name: "Le Champ à JC", description: "Pour les soirées avec Manu", price: 1280, user_id: 2, category_id: 4)
sky = Product.new(name: "Le Sky à JC", description: "Pour les soirées avec Raoult", price: 120, user_id: 2, category_id: 4)

biere_de_mamie.save
vin_de_noah.save
champ.save
sky.save

puts "Products created, ready to go!"
