puts "destroy all bikes and users"

Bike.destroy_all
User.destroy_all
Reservation.destroy_all

puts "creating users"
donatien = User.create(first_name: "donatien", email: "donatien@hotmail.fr", password: "password")
victor = User.create(first_name: "victor", email: "victor@hotmail.fr", password: "password")
joffrey = User.create(first_name: "joffrey", email: "joffrey@hotmail.fr", password: "password")
david = User.create(first_name: "david", email: "david@hotmail.fr", password: "password")
marguerite = User.create(first_name: "marguerite", email: "marguerite@hotmail.fr", password: "password")

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

desc1 = "Bonjour, Je loue mon vélo Peugeot à Paris. Je mesure 1m72, convient difficilement à plus grand que moi mais facilement à plus petit :) Elle s'appelle Joséphine et a la selle rouge. Elle ne sort pas sans son cadenas U sécurisé à attacher avec la roue, le cadre et un poteau fixe ;) Je suis disponible pour vous donner plus d'informations, n'hésitez pas à me contacter. Belle journée !"
desc2 = "Goûtez à la qualité et au confort hollandais, pour une balade mémorable en toute tranquillité. Avec Holland Bikes, vous faites le choix : D'un vélo ultra confort et sûr , de grandes marques hollandaises expertes dans le vélo, ayant plus de 100 ans d'existence, telles que Gazelle ou Batavus et des vélos récents, renouvelés très fréquemment."
desc3 = "Vélo à assistance électrique de type boitier pédalier avec batterie lithium - Boitier vitesse Nuvinci - frein à disque avant et arrière - Capacité de charge 140Kg - Dimensions: long 2650mm x large850mm x haut1045mM - Dimension caisson: long750mm x large560mm x haut560mm SOUPLE"

puts "creating bikes"
bike1 = Bike.new(title: "Nice racing bike", description: desc1, price_per_day: 15, address: "18 rue rousselet paris", bell: true, helmet: true, lights: true, padlock: true)
bike2 = Bike.new(title: "Nice city bike", description: desc2, price_per_day: 20, address: "10 rue de la grand aux belles paris", pump: true, lights: true, child_seat: true, padlock: true, basket: true)
bike3 = Bike.new(title: "Delivery bike", description: desc3, price_per_day: 12, address: "14 rue crespin du gast paris", lights: true, padlock: true)
bike4 = Bike.new(title: "Racing bike", description: "Very fast and light. Don't hesitate to contact me", price_per_day: 25, address: "16 villa gaudelet paris", pump: true, lights: true)
bike5 = Bike.new(title: "Very Nice mid-racing bike", description: "Very fast and light", price_per_day: 25, address: "152 avenue jean jeaurès paris", pump: true)
bike6 = Bike.new(title: "Quadridem", description: "Perfect for travelling with friends. Four sits.", price_per_day: 45, address: "18 rue rousselet paris", lights: true, padlock: true)

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
