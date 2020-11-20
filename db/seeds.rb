# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating 3 new users"

chuck = User.new(username: "Chuck Norris", first_name: "Chuck", last_name: "Norris", email:"godlike@gmail.com", password: "iamsecurity", admin: true)
if chuck.save
  print '.'
else
  chuck = User.where(username: "Chuck Norris").first
  print '_'
end

jc = User.new(username: "JeanCastex75", first_name: "Jean", last_name: "Castex", email:"lovemanu@gmail.com", password: "manuforever")
if jc.save
  print '.'
else
  jc = User.where(username: "JeanCastex75").first
  print '_'
end

heenok = User.new(username: "XxLeRoiHeenokxX", first_name: "Roi", last_name: "Heenok", email:"lovemyself@gmail.com", password: "meforever")
if heenok.save
  print '.'
else
  heenok = User.where(username: "XxLeRoiHeenokxX").first
  print '_'
end

puts "\nJean Castex & Roi Heenok has been created"
puts "Chuck Norris is now an admin"
puts "\n----------------------------"
puts "\nCreating 4 categories"

beer_category = Category.new(name: "beer")
if beer_category.save
  beer_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605625374/josh-duncan-6Sa26Lsjtok-unsplash_y6qw6l.jpg"), filename: 'beer.jpg')
  print '.'
else
  beer_category = Category.where(name: "beer").first
  print '_'
end

wine_category = Category.new(name: "wine")
if wine_category.save
  wine_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784215/wolfgang-hasselmann-GPwuH2q9mcs-unsplash_ivvsto.jpg"), filename: 'wine.jpg')
  print '.'
else
  wine_category = Category.where(name: "wine").first
  print '_'
end

liquors_category = Category.new(name: "liquors")
if liquors_category.save
  liquors_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784372/liquors_j1ybtn.jpg"), filename: 'liquors.jpg')
  print '.'
else
  liquors_category = Category.where(name: "liquors").first
  print '_'
end

champagne_category = Category.new(name: "champagne")
if champagne_category.save
  champagne_category.photo.attach(io: open("https://res.cloudinary.com/dykscnyvu/image/upload/v1605784471/kevin-kelly-PPneSBqfCCU-unsplash_ml7a9p.jpg"), filename: 'champagne.jpg')
  print '.'
else
  champagne_category = Category.where(name: "champagne").first
  print '_'
end

puts "\nCreated beer, wine, liquors and champagne categories"
puts "\n----------------------------"
puts "\nCreating 7 products"

biere_de_mamie = Product.new(name: "Bière de ma grand mère", description: "Une bière faite avec amour, comme ma grand mère la faisait", price: 18, user_id: heenok.id, category_id: beer_category.id)
if biere_de_mamie.save
  print '.'
else
  print '_'
end

vin_de_noah = Product.new(name: "Vin de Noah", description: "Pour enfiler les chaussures à bascule", price: 12, user_id: heenok.id, category_id: wine_category.id)
if vin_de_noah.save
  print '.'
else
  print '_'
end

champ = Product.new(name: "Le Champ à JC", description: "Pour les soirées avec Manu", price: 1280, user_id: jc.id, category_id: champagne_category.id)
if champ.save
  print '.'
else
  print '_'
end

sky = Product.new(name: "Le Sky à JC", description: "Pour les soirées avec Raoult", price: 120, user_id: jc.id, category_id: champagne_category.id)
if sky.save
  print '.'
else
  print '_'
end

rhum = Product.new(name: "Planteur maison", description: "Planteur de Guadeloupe", price: 15, user_id: heenok.id, category_id: liquors_category.id)
if rhum.save
  print '.'
else
  print '_'
end

cerise = Product.new(name: "Liqueur de cerise", description: "Liqueur maison à la cerise", price: 8, user_id: heenok.id, category_id: liquors_category.id)
if cerise.save
  print '.'
else
  print '_'
end

rhubarbe = Product.new(name: "Eau de vie de Rhubarbe", description: "Eau de vie Rhubarbe 65°", price: 12, user_id: chuck.id, category_id: liquors_category.id)
if rhubarbe.save
  print '.'
else
  print '_'
end

puts "\nProducts created, ready to go!"
