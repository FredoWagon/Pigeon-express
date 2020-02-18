# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destruction start !"

Bird.destroy_all

puts "All birds are dead !"

user = {name: "Charlotte", profession: "Lead-Designer-top-chef-master", email: "dezanneaucharlotte@gmail.com" , location: "Poodlard", password: "charlotte" }

User.create!(user)

puts "Charlotta is born wtf !"

puts "Birds are coming !"

birds = [
{ name: "Pipou",
  species: "Dragon",
  category: "Fantasy",
  price: 8000,
  range: 40000,
  capacity: 150000,
  user_id: 1,
},
{ name: "Cuicui",
  species: "Pigeon",
  category: "City",
  price: 5,
  range: 2000,
  capacity: 2,
  user_id: 1,
},
{ name: "Paulette",
  species: "Chouette",
  category: "Forest",
  price: 50,
  range: 450,
  capacity: 20,
  user_id: 1,
},
{ name: "HeyHey",
  species: "Poulet",
  category: "Country",
  price: 2,
  range: 1,
  capacity: 1,
  rating: 1,
  user_id: 1,
},
{ name: "Euréka",
  species: "Mouette",
  category: "Sea",
  price: 400,
  range: 20000,
  capacity: 7,
  rating: 4,
  user_id: 1,
},
]

Bird.create!(birds)

puts "New bird are born !"
