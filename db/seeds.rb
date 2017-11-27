# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

donatien = User.find(1)

bike1 = Bike.new(title: "Nice racing bike", description: "Very fast and light", price_per_day: 15, address: "Paris")
bike2 = Bike.new(title: "Nice bike", description: "Very fast and light", price_per_day: 20, address: "Paris")
bike3 = Bike.new(title: "Racing bike", description: "Very fast and light", price_per_day: 12, address: "Paris")
bike4 = Bike.new(title: "Very Nice racing bike", description: "Very fast and light", price_per_day: 25, address: "Paris")

bike1.user = donatien
bike2.user = donatien
bike3.user = donatien
bike4.user = donatien



bike1.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike2.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike3.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"
bike4.remote_photo_url = "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg"

bike1.save!
bike2.save!
bike3.save!
bike4.save!
