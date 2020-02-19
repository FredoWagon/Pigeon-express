# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destruction start !"

Bird.destroy_all
User.destroy_all

puts "All birds are dead !"

user = { name: "Charlotte", profession: "Lead-Designer-top-chef-master", email: "dezanneaucharlotte@gmail.com" , location: "Poodlard", password: "charlotte" }
u = User.create!(user)

puts "Charlotta is born wtf !"

puts "Birds are coming !"

birds = [
  { name: "Pipou",
    species: "Dragon",
    category: "Fantasy",
    price: 8000,
    range: 40000,
    rating: 5,
    capacity: 150000,
    address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux",
    user_id: u.id,
    image: "https://images.unsplash.com/photo-1551617489-25aa9b1053c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    description: "Pipou dit le Doré est un Dragon de la progéniture des Dragons de Morgoth. Après la chute de ce dernier, il quitte la Brande Desséchée (pays des dragons) pour parcourir la Terre du Milieu à la recherche d'un trésor et d'une cachette."
  },
  { name: "Cuicui",
    species: "Pigeon",
    category: "City",
    price: 5,
    range: 2000,
    rating: 3,
    address: "Place des Quinconces, 33000 Bordeaux",
    capacity: 2,
    user_id: u.id,
    image: "https://images.unsplash.com/photo-1439577873450-389044ffc989?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    description: "Les pigeons sont des oiseaux qui font partie de la famille des columbidés. On en rencontre sur tous les continents. Ils vivent en plaine et dans les villes et se nourrissent principalement de graines, mais également de déchets alimentaires selon l'endroit où ils se trouvent."
  },
  { name: "Paulette",
    species: "Chouette",
    category: "Forest",
    price: 50,
    range: 450,
    address: "20 Quai de Brazza, 33100 Bordeaux",
    rating: 2,
    capacity: 20,
    user_id: u.id,
    image: "https://images.unsplash.com/photo-1549619856-ac562a3ed1a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    description: "Hedwige fut offerte Harry par Hagrid comme cadeau d’anniversaire le 31 juillet 1991. Hagrid l’acheta sur le Chemin de Traverse, chez Eeylops, Au Royaume du Hibou (ES5). Harry lui donna le nom d’une sorcière trouvée dans son livre d’histoire de la Magie (ES6). Hedwige s’occupait du courrier de Harry : des lettres de et pour Hagrid (ES8), des Dursley (CS12) et même d’Hermione lorsqu’elle était en vacances en France (PA1). C’était une chouette postale très douée."
  },
  { name: "HeyHey",
    species: "Poulet",
    category: "Country",
    price: 2,
    range: 1,
    address: "Gare St Jean, 33800 Bordeaux",
    capacity: 1,
    rating: 1,
    user_id: u.id,
    image: "https://images.unsplash.com/photo-1514655013245-0c51e629bd2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    description: "Hey Hey est un coq qui est ami avec Vaiana depuis son enfance. Il est extrêmement stupide et ne fait pas attention à ce qu’il fait."
  },
  { name: "Euréka",
    species: "Mouette",
    category: "Sea",
    price: 400,
    range: 20000,
    address: "7 Rue de la Merci, 33000 Bordeaux",
    capacity: 7,
    rating: 4,
    user_id: u.id,
    image: "https://images.unsplash.com/photo-1555150172-fef5eb1fa80a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    description: "Les mouettes sont carnivores. Elles sont principalement piscivores, c'est-à-dire qu'elles mangent essentiellement du poisson qu'elles pêchent mais elles attaquent aussi les œufs et les oisillons des autres oiseaux. Certaines mangent aussi des coquillages et des crustacés."
  }
]

Bird.create!(birds)

puts "New bird are born !"
