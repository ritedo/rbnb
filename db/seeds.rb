# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(first_name: "Bob", last_name: "Marcel", email: "bob.marcel@gmail.com")

bike1 = Bike.new(title: "Nice racing bike", description: "Very fast and light", price_per_day: 15, photo: "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg", address: "Paris")
bike2 = Bike.new(title: "Nice bike", description: "Very fast and light", price_per_day: 20, photo: "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg", address: "Paris")
bike3 = Bike.new(title: "Racing bike", description: "Very fast and light", price_per_day: 12, photo: "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg", address: "Paris")
bike4 = Bike.new(title: "Very Nice racing bike", description: "Very fast and light", price_per_day: 25, photo: "https://www.bricklanebikes.co.uk/content/images/thumbs/0030350_6ku-fixie-single-speed-bike-beach-bum_1200.jpeg", address: "Paris")

bike1.user = user1
bike2.user = user1
bike3.user = user1
bike4.user = user1
