require 'faker'

Restaurant.destroy_all
Event.destroy_all
Participation.destroy_all
User.destroy_all





User.create!(
  first_name: "Marine",
  last_name: "Petit",
  email: "m@gmail.com ",
  password: "123456",
  facebook_picture_url: "http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483957279/xxeg78nv1s6rcxgswegw.jpg",
  )
20.times do
  User.create!(
    first_name: Faker::Ancient.hero,
    last_name: Faker::Beer.hop,
    email: Faker::Internet.email,
    password: "123456",
    facebook_picture_url: ["https://randomuser.me/api/portraits/men/1.jpg", "https://randomuser.me/api/portraits/women/90.jpg"].sample,
    )
end

10.times do
  Restaurant.create!(
    name: Faker::Food.ingredient,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    website: Faker::Internet.domain_name,
    category: ["brasserie", "chinois", "gastronomie", "vegetarien", "fast-food"].sample,
    picture: "http://www.papillesetpupilles.fr/wp-content/uploads/2012/10/Le-Pressoir-dArgent.jpg",
    )
end



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
