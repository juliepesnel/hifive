Restaurant.destroy_all
Event.destroy_all
Participation.destroy_all
User.destroy_all

users = [
  {
    first_name: "Marine",
    last_name: "Petit",
    email: "petitm31@gmail.com",
    password: "123456",
    facebook_picture_url: "http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483957279/xxeg78nv1s6rcxgswegw.jpg"
  },
  {
    first_name: "Thibault",
    last_name: "Lanery",
    email: "thibaultlanery@gmail.com",
    password: "123456",
    facebook_picture_url: "http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483962762/jlow4xjwdz8ey8zib5ac.jpg"
  },
  {
    first_name: "Anteo",
    last_name: "Guillot",
    email: "anteo737@hotmail.fr",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483959451/c9ma114ebljuisnu4mhu.jpg"
  },
  {
    first_name: "Julie",
    last_name: "Pesnel",
    email: "juliepesnel@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483960437/cxkxfatqisrjglgpkmbv.jpg"
  },
  {
    first_name: "Antoine",
    last_name: "Veaux",
    email: "antoine.veaux@gmail.com ",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483956932/n2nsaw9s8ci1q51xwysc.jpg"
  },
  {
    first_name: "Benjamin",
    last_name: "Gahéry",
    email: "benjamingahery@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483956794/usmevqf0ci6zmym0wkgd.jpg"
  },
  {
    first_name: "Charles",
    last_name: "Randria",
    email: "oh.randria@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483963541/lduk7495w2uhangqfzey.jpg"
  },
  {
    first_name: "Irène",
    last_name: "Costelian",
    email: " irene.costelian@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1484045376/vp1ucjp65f9clpojxbhn.jpg"
  },
  {
    first_name: "Julia",
    last_name: "Lissague",
    email: "julia.lissague@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483954828/lim7eeekefhol5qpkr2y.jpg"
  },
  {
    first_name: "Sibylle",
    last_name: "De Courcel",
    email: " sibylle44@gmail.com",
    password: "123456",
    facebook_picture_url:"http://res.cloudinary.com/wagon/image/upload/c_fill,h_180,w_180/v1483963898/ve2wa7k9mnrtgbyq9sai.jpg"
  }
]

users.each {|user| User.create!(user)}

category_list = [
  ["Vietnamese", "https://images.unsplash.com/photo-1478749485505-2a903a729c63?dpr=0.800000011920929&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop="],
  ["Italian", "https://images.unsplash.com/photo-1458642849426-cfb724f15ef7?dpr=0.800000011920929&auto=format&fit=crop&w=1500&h=1001&q=80&cs=tinysrgb&crop="],
  ["French", "https://images.unsplash.com/photo-1432139509613-5c4255815697?dpr=0.3333333432674408&auto=format&fit=crop&w=1500&h=2265&q=80&cs=tinysrgb&crop="],
  ["American","https://images.unsplash.com/photo-1487004121828-9fa15a215a7a?dpr=0.3333333432674408&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop="],
  ["Fast-food","https://unsplash.com/collections/398435/fast-food?photo=aZOqcEK2KuQ"],
  ["Mexican", "http://regevelya.com/wp-content/uploads/2015/10/mexico-huaraches.jpg"],
  ["Taiwanese","http://www.taiwanese-secrets.com/image-files/taiwan-food.005.jpg"],
  ["Greek", "http://www.greecewanderer.com/wp-content/uploads/2012/04/salad_sea_house.jpg"],
  ["Thaï", "https://tse3.mm.bing.net/th?id=OIP.g2Ro-nOJsE6zRnRtojj_vAEsDI&pid=Api" ],
  ["Gastronomic", "https://tse3.mm.bing.net/th?id=OIP.8q6dAzIiIr_Sd0aRG08yzQEsDS&pid=Api"]
]

category_list.each do |category|
  Category.create( name: category[0], pictoname: category[1] )
end

restaurants = [
  {
    name: "Le coin des Copains",
    address: "1 Quai de Bacalan, 33300 Bordeaux",
    phone_number: "05 56 04 55 27",
    website: "https://www.facebook.com/lecoindescopainsbx/",
    category_id: 3,
    picture: "https://u.tfstatic.com/restaurant_photos/124/68124/169/612/le-coin-des-copains-apercu-de-l-interieur-b5747.jpg",
  },
  {
    name: "Chez Dupont",
    address: "45 Rue Notre Dame, 33000 Bordeaux",
    phone_number: "05 56 81 49 59",
    website: "http://www.chez-dupont.com/",
    category_id: 3,
    picture: "http://www.chez-dupont.com/image/diaporama/bistrot/img2.jpg",
  },
  {
    name: "L'Estacade",
    address: "Quai des Queyries, 33100 Bordeaux",
    phone_number: "05 57 54 02 50",
    website: "http://www.estacade-restaurant.com/",
    category_id: 10,
    picture: "http://www.estacade-restaurant.com/content/galleries/restaurant/restaurant-01.jpg",
  },
  {
    name: "Le chapon Fin",
    address: "Quai des Queyries, 33100 Bordeaux",
    phone_number: "05 57 54 02 50",
    website: "http://www.chapon-fin.com/",
    category_id: 3,
    picture: "http://medias.otbor.vm.aiprod.com/original/RESAQU033FS000J2/4-IMGP4684.jpg",
  },
  {
    name: "Kuzina",
    address: "22 Rue Porte de la Monnaie, 33800 Bordeaux",
    phone_number: "05 56 74 32 92",
    website: "http://www.latupina.com/en/pages/kuzina.php",
    category_id: 8,
    picture: "http://www.latupina.com/wp-content/uploads/2012/07/L1040562.jpg",
  },
  {
    name: "La Maison du Pata Negra",
    address: "Place des Capucins, 33800 Bordeaux",
    phone_number: "05 56 88 59 92",
    website: "http://maisondupatanegra.com",
    category_id: 6,
    picture: "https://benedictelarre.files.wordpress.com/2014/01/wpid-img_2284.jpg",
  },
  {
    name: "Ristorant Del Arte",
    address: "Cinéma Mégarama, 7 Quai Queyries, 33100 Bordeaux",
    phone_number: "05 56 40 86 21",
    website: "http://www.delarte.fr/restaurant-italien-pizzeria-bordeaux-bastide.html",
    category_id: 2,
    picture: "http://mikespizza.fr/wp-content/uploads/2016/07/wafswectpmbr0zmug9ly.jpg",
  },
  {
    name: "Le Davoli",
    address: "13 Rue des Bahutiers, 33000 Bordeaux",
    phone_number: "05 56 40 86 21",
    website: "http://www.ledavoli.com/",
    category_id:  3,
    picture: "https://www.naniecuisine.com/wp-content/uploads/2016/05/Le-Davoli-%C3%A0-Bordeaux-33-00.jpg",
  },
  {
    name: "Le Taj Mahal Bordeaux",
    address: "24 Rue Parlement Sainte-Catherine, 33000 Bordeaux",
    phone_number: "05 56 40 86 21",
    website: "http://www.tajmahalbordeaux.com/",
    category_id: 7,
    picture: "https://static.restovisio.com/gallery/large/restaurant-bordeaux-taj-mahal-655_6.jpg",
  },
  {
    name: "Miles",
    address: "33 Rue du Cancera, 33000 Bordeaux",
    phone_number: "05 56 81 18 24",
    website: "http://restaurantmiles.com/",
    category_id: 4,
    picture: "https://static.restovisio.com/gallery/large/551becff40f6a-a826abcaf2197b4176c1f7560271ece8.png",
  }
]

restaurants.each {|resto| Restaurant.create!(resto)}

events = [
  {
    restaurant: Restaurant.all.sample,
    title: "Apéro Ruby",
    user: User.first,
    happen_at: DateTime.now + (18/24.0),
    due_at: DateTime.now + (14/24.0)
  },
    {
    restaurant: Restaurant.all.sample,
    title: "Holliday Prep's",
    user: User.fifth,
    happen_at: DateTime.now + (24/24.0),
    due_at: DateTime.now + (18/24.0)
  },
   {
    restaurant: Restaurant.all.sample,
    title: "DRINK! it's been too long..",
    user: User.last,
    happen_at: DateTime.now + (48/24.0),
    due_at: DateTime.now + (32/24.0)
  }
]

events.each {|event| Event.create!(event)}

participations = [
{
  user: User.fifth,
  event: Event.first,
  status: 0
},

{
  user: User.fourth,
  event: Event.first,
  status: 1
},

{
  user: User.last,
  event: Event.first,
  status: 1
},

{
  user: User.second,
  event: Event.first,
  status: 2
},

{
  user: User.third,
  event: Event.second,
  status: 0
},

{
  user: User.fourth,
  event: Event.second,
  status: 1
},

{
  user: User.fifth,
  event: Event.second,
  status: 1
},

{
  user: User.first,
  event: Event.second,
  status: 0
},

{
  user: User.first,
  event: Event.third,
  status: 2
},

{
  user: User.second,
  event: Event.third,
  status: 2
},
]

participations.each {|participation| Participation.create!(participation)}



