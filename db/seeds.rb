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
    category: "brasserie",
    picture: "http://www.papillesetpupilles.fr/wp-content/uploads/2012/10/Le-Pressoir-dArgent.jpg",
    },

  {
    name: "Restaurant Côté Rue",
    address: "14, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "gastronomie",
    picture: "https://u.tfstatic.com/restaurant_photos/210/68210/169/612/cote-rue-salle-b8c25.jpg",
    },

  {
    name: "Dragon Doré",
    address: "9, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "chinois",
    picture: "http://www.leafstyle.fr/wp-content/uploads/2015/07/dragon-dore-restaurant-chinois-bordeaux4.jpg",
    },

  {
    name: "Restaurant Mélodie",
    address: "6, rue des Faussets",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: "vegetarien",
    picture: "https://u.tfstatic.com/restaurant_photos/405/45405/169/612/melodie-melodie-16337.jpg",
  }
]

restaurants.each { |restaurant| Restaurant.create!(restaurant) }

users = [

{
 first_name: "Jean-Marc",
 last_name: "Le Pen",
 email: "JM@gmail.com",
 password: "123456",
 facebook_picture_url: "https://randomuser.me/api/portraits/men/1.jpg",
 },

{
 first_name: "Marine",
 last_name: "Le Pen",
 email: "marine@gmail.com",
 password: "123456",
 facebook_picture_url: "https://randomuser.me/api/portraits/women/90.jpg",
 },

{
 first_name: "Jules",
 last_name: "Le Pan",
 email: "Jules@gmail.com",
 password: "123456",
 facebook_picture_url: "https://randomuser.me/api/portraits/men/1.jpg",
 },

{
 first_name: "Lucie",
 last_name: "Le Don",
 email: "lucie@gmail.com",
 password: "123456",
 facebook_picture_url: "https://randomuser.me/api/portraits/women/90.jpg",
 }
]

users.each {|user| User.create!(user)}

events = [
  {
    restaurant: Restaurant.all.sample,
    user: User.first,
    happen_at: DateTime.now + (5/24.0),
    due_at: DateTime.now + (2/24.0)
  },

    {
    restaurant: Restaurant.all.sample,
    user: User.first,
    happen_at: DateTime.now + (8/24.0),
    due_at: DateTime.now + (5/24.0)
  },

   {
    restaurant: Restaurant.all.sample,
    user: User.second,
    happen_at: DateTime.now + (5/24.0),
    due_at: DateTime.now + (2/24.0)
  }
]

events.each {|event| Event.create!(event)}

participations = [
{
  user: User.second,
  event: Event.first,
  status: 0
},

{
  user: User.third,
  event: Event.first,
  status: 1
},

{
  user: User.second,
  event: Event.second,
  status: 0
},

{
  user: User.third,
  event: Event.second,
  status: 1
},

{
  user: User.second,
  event: Event.third,
  status: 1
},

{
  user: User.third,
  event: Event.third,
  status: 0
},

{
  user: User.first,
  event: Event.third,
  status: 2
}

]

participations.each {|participation| Participation.create!(participation)}
