# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating 3 new users"

chuck = User.new(username: "Chuck Norris", first_name: "Chuck", last_name: "Norris", email:"godlike@gmail.com", password: "iamsecurity", admin: true)
chuck.save
print '.'
jc = User.new(username: "JeanCastex75", first_name: "Jean", last_name: "Castex", email:"lovemanu@gmail.com", password: "manuforever")
jc.save
print '.'
heenok = User.new(username: "XxLeRoiHeenokxX", first_name: "Roi", last_name: "Heenok", email:"lovemyself@gmail.com", password: "meforever")
heenok.save
print '.'

puts "\nJean Castex & Roi Heenok has been created"
puts "Chuck Norris is now an admin"
puts "\n----------------------------"
puts "\nCreating 4 categories"

beer_category = Category.new(name: "beer")
beer_category.save
beer_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605625374/josh-duncan-6Sa26Lsjtok-unsplash_y6qw6l.jpg"), filename: 'beer.jpg')
print '.'
wine_category = Category.new(name: "wine")
wine_category.save
wine_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784215/wolfgang-hasselmann-GPwuH2q9mcs-unsplash_ivvsto.jpg"), filename: 'wine.jpg')
print '.'
liquors_category = Category.new(name: "liquors")
liquors_category.save
liquors_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784372/liquors_j1ybtn.jpg"), filename: 'liquors.jpg')
print '.'
champagne_category = Category.new(name: "champagne")
champagne_category.save
champagne_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784471/kevin-kelly-PPneSBqfCCU-unsplash_ml7a9p.jpg"), filename: 'champagne.jpg')
print '.'

puts "\nCreated beer, wine, liquors and champagne categories"
puts "\n----------------------------"
puts "\nCreating 7 products"

biere_de_mamie = Product.new(name: "Bière de ma grand mère", description: "Une bière faite avec amour, comme ma grand mère la faisait", price: 18, user_id: heenok.id, category_id: beer_category.id)
biere_de_mamie.save!
print '.'
vin_de_noah = Product.new(name: "Vin de Noah", description: "Pour enfiler les chaussures à bascule", price: 12, user_id: heenok.id, category_id: wine_category.id)
vin_de_noah.save
print '.'
champ = Product.new(name: "Le Champ à JC", description: "Pour les soirées avec Manu", price: 1280, user_id: jc.id, category_id: champagne_category.id)
champ.save
print '.'
sky = Product.new(name: "Le Sky à JC", description: "Pour les soirées avec Raoult", price: 120, user_id: jc.id, category_id: champagne_category.id)
sky.save
print '.'
rhum = Product.new(name: "Planteur maison", description: "Planteur de Guadeloupe", price: 15, user_id: heenok.id, category_id: liquors_category.id)
rhum.save
print '.'
cerise = Product.new(name: "Liqueur de cerise", description: "Liqueur maison à la cerise", price: 8, user_id: heenok.id, category_id: liquors_category.id)
cerise.save
print '.'
rhubarbe = Product.new(name: "Eau de vie de Rhubarbe", description: "Eau de vie Rhubarbe 65°", price: 12, user_id: chuck.id, category_id: liquors_category.id)
rhubarbe.save
print '.'


puts "\nProducts created, ready to go!"


