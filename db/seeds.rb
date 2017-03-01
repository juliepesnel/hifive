Restaurant.destroy_all
Event.destroy_all
Participation.destroy_all
User.destroy_all


restaurants = [
  {
    name: "Le Pressoir d'Argent",
    address: "2, place de la Comédie",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "brasserie"
    },

  {
    name: "Restaurant Côté Rue",
    address: "14, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "gastronomie"
    },

  {
    name: "Dragon Doré",
    address: "9, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "chinois"
    },

  {
    name: "Restaurant Mélodie",
    address: "6, rue des Faussets",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "vegetarien"
  }
]

restaurants.each { |restaurant| Restaurant.create!(restaurant) }

users = [

{
 first_name: "Jean-Marc",
 last_name: "Le Pen",
 email: "JM@gmail.com",
 password: "123456",
 },

{
 first_name: "Marine",
 last_name: "Le Pen",
 email: "marine@gmail.com",
 password: "123456",
 },

{
 first_name: "Jules",
 last_name: "Le Pan",
 email: "Jules@gmail.com",
 password: "123456",
 },

{
 first_name: "Lucie",
 last_name: "Le Don",
 email: "lucie@gmail.com",
 password: "123456",
 }
]

users.each {|user| User.create!(user)}

events = [
  {
    restaurant: Restaurant.all.sample,
    user: User.all.sample,
    happen_at: DateTime.now + (5/24.0),
    due_at: DateTime.now + (2/24.0)
  },

    {
    restaurant: Restaurant.all.sample,
    user: User.all.sample,
    happen_at: DateTime.now + (8/24.0),
    due_at: DateTime.now + (5/24.0)
  }
]

events.each {|event| Event.create!(event)}

participations = [
{
  user: User.first,
  event: Event.first,
  status: 0
},

{
  user: User.second,
  event: Event.first,
  status: 1
},

{
  user: User.third,
  event: Event.first,
  status: 2
},

{
  user: User.all.sample,
  event: Event.second,
  status: 1
}

]

participations.each {|participation| Participation.create!(participation)}
