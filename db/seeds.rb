puts "destroy all bikes and users"

Bike.destroy_all
User.destroy_all

puts "creating users"
donatien = User.create(email: "donatien@hotmail.fr", password: "password")
victor = User.create(email: "victor@hotmail.fr", password: "password")
joffrey = User.create(email: "joffrey@hotmail.fr", password: "password")
david = User.create(email: "david@hotmail.fr", password: "password")
marguerite = User.create(email: "marguerite@hotmail.fr", password: "password")


puts "creating bikes"
bike1 = Bike.new(title: "Nice racing bike", description: "Very fast and light", price_per_day: 15, address: "Paris")
bike2 = Bike.new(title: "Nice bike", description: "Very fast and light", price_per_day: 20, address: "Paris")
bike3 = Bike.new(title: "Delivery bike", description: "With a delivery box", price_per_day: 12, address: "Paris")
bike4 = Bike.new(title: "Racing bike", description: "Very fast and light", price_per_day: 25, address: "Paris")
bike5 = Bike.new(title: "Very Nice mid-racing bike", description: "Very fast and light", price_per_day: 25, address: "Paris")

bike1.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike2.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike3.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike4.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike5.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"

bike1.user = donatien
bike2.user = victor
bike3.user = joffrey
bike4.user = david
bike5.user = marguerite

bike1.save!
bike2.save!
bike3.save!
bike4.save!
bike5.save!

puts "creating reservations"
reservation1 = Reservation.new(starts_at: DateTime.new(2017,12,2), ends_at: DateTime.new(2017,12,4))
reservation2 = Reservation.new(starts_at: DateTime.new(2017,12,5), ends_at: DateTime.new(2017,12,7))

reservation1.user = donatien
reservation2.user = victor

reservation1.bike = bike4
reservation2.bike = bike5

reservation1.save!
reservation2.save!
