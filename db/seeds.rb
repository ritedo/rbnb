puts "destroy all bikes and users"

Bike.destroy_all
User.destroy_all
Reservation.destroy_all

puts "creating users"
donatien = User.create(email: "donatien@hotmail.fr", password: "password")
victor = User.create(email: "victor@hotmail.fr", password: "password")
joffrey = User.create(email: "joffrey@hotmail.fr", password: "password")
david = User.create(email: "david@hotmail.fr", password: "password")
marguerite = User.create(email: "marguerite@hotmail.fr", password: "password")

donatien.remote_avatar_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/fquca4dej4dklpyq1cva.jpg"
victor.remote_avatar_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/e7hbgzamn1jrhuonn7yr.jpg"
joffrey.remote_avatar_url = "https://avatars0.githubusercontent.com/u/26279782?v=4"
david.remote_avatar_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/lrvp1wxcx2jvymmwq1ap.jpg"
marguerite.remote_avatar_url = "https://avatars3.githubusercontent.com/u/32311278?v=4"

donatien.save!
victor.save!
joffrey.save!
david.save!
marguerite.save!

puts "creating bikes"
bike1 = Bike.new(title: "Nice racing bike", description: "Very fast and light", price_per_day: 15, address: "18 rue rousselet paris")
bike2 = Bike.new(title: "Nice city bike", description: "Very good sitting, rented with a baby sit. Perfect for an adult with a young child", price_per_day: 20, address: "10 rue de la grand aux belles paris")
bike3 = Bike.new(title: "Delivery bike", description: "With a delivery box", price_per_day: 12, address: "14 rue crespin du gast paris")
bike4 = Bike.new(title: "Racing bike", description: "Very fast and light", price_per_day: 25, address: "16 villa gaudelet paris")
bike5 = Bike.new(title: "Very Nice mid-racing bike", description: "Very fast and light", price_per_day: 25, address: "152 avenue jean jeaurès paris")
bike6 = Bike.new(title: "Quadridem", description: "Perfect for travelling with friends. Four sits.", price_per_day: 45, address: "18 rue rousselet paris")

bike1.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike2.remote_photo_url = "https://www.placedelaloc.com/sites/default/files/styles/annonce_detail/public/annonces/2015/09/14/12982/location-velo_vtc_gitane_homme_avec_siege_bebe-1999771491.jpg?itok=fO2Qp8MZ"
bike3.remote_photo_url = "https://www.flyingdutchman.bike/wp-content/uploads/2015/03/London-dutch-cargo-bike-Long-John-Silver-w.jpg"
bike4.remote_photo_url = "https://s-media-cache-ak0.pinimg.com/originals/d0/51/cb/d051cbef7b8117be58fabbd96611acb2.jpg"
bike5.remote_photo_url = "http://www.vieuxbicloo.com/wp-content/uploads/2012/05/179115.jpg"
bike6.remote_photo_url = "https://i.pinimg.com/564x/df/a2/00/dfa2003c84eb31911e64b7d780884834.jpg"

bike1.user = donatien
bike2.user = victor
bike3.user = joffrey
bike4.user = david
bike5.user = marguerite
bike6.user = donatien

bike1.save!
bike2.save!
bike3.save!
bike4.save!
bike5.save!
bike6.save!

puts "creating reservations"
reservation1 = Reservation.new(starts_at: DateTime.new(2017,12,2), ends_at: DateTime.new(2017,12,4))
reservation2 = Reservation.new(starts_at: DateTime.new(2017,12,5), ends_at: DateTime.new(2017,12,7))
reservation3 = Reservation.new(starts_at: DateTime.new(2017,12,6), ends_at: DateTime.new(2017,12,10))

reservation1.user = donatien
reservation2.user = victor
reservation3.user = marguerite

reservation1.bike = bike4
reservation2.bike = bike5
reservation3.bike = bike6

reservation1.save!
reservation2.save!
reservation3.save!
