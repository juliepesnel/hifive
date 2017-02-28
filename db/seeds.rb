Category.destroy_all
Restaurant.destroy_all
User.destroy_all

categories = %w(french italian thaï chinese fast-food)
categories.each { |category| Category.create!(name: category) }

restaurants = [
  {
    name: "Le Pressoir d'Argent",
    address: "2, place de la Comédie",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: Category.all.sample,
    },

  {
    name: "Restaurant Côté Rue",
    address: "14, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: Category.all.sample,
    },

  {
    name: "Dragon Doré",
    address: "9, rue Paul Louis Lande",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: Category.all.sample,
    },

  {
    name: "Restaurant Mélodie",
    address: "6, rue des Faussets",
    phone_number: "05.56.33.33.33",
    website: "https://www.tripadvisor.com",
    category: Category.all.sample,
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
