# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Running seed file"

User.destroy_all
Plan.destroy_all
Activity.destroy_all
# Event.destroy_all


puts "All users and activities destroyed!!"
puts "Creating new users, 1 event and some activities!"

Event.create!(start_date: Date.today, end_date: Date.today, location: "London", name: "Tilly")

User.create!(first_name: "Tilly", last_name: "Bishop", event_id: Event.last.id, email: "tilly@tilly.com", password: "123456")
User.create!(first_name: "Olivia", last_name: "McSweeney", event_id: Event.last.id, email: "olivia@olivia.com", password: "123456")
User.create!(first_name: "Craig", last_name: "Norford", event_id: Event.last.id, email: "craig@craig.com", password: "123456")
User.create!(first_name: "Emily", last_name: "Tregelles", event_id: Event.last.id, email: "emily@emily.com", password: "123456")

# go activities
Activity.create(category: "go", name: "Walk", booked: true, details: "Take tube to dinner.")
Activity.create(category: "go", name: "Drive", booked: true, details: "Taxis to take us from Dishoom to bowling.")
Activity.create(category: "go", name: "Public Transport", booked: true, details: "Take tube one stop to karaoke.")
# ATTEMPTED IMAGE > Activity.create(date: Date.today, start_time: '12:00', end_time: '14:00', category: "eat", address: "1 Hoxton", name: "Dishoom", booked: true, details: "Round table booked outside.", image: '/images/restaurant 1.jpg')

# All other activities
Activity.create!(category: "eat", address: "1 Hoxton", name: "Dishoom", booked: false, details: "Round table booked outside.", image_url: "eat/restaurant 1.jpg")
Activity.create!(category: "eat", address: "1 Haggerston", name: "Glorias", booked: false, details: "Private room for dinner.", image_url: "eat/restaurant 2.jpg" )
Activity.create!(category: "eat", name: "Mnky Hse", address: "10 Dover Street, Mayfair", booked: false, details: "Latin American late night restaurant with DJ.", image_url:"eat/mnkyhse.jpg" )
Activity.create!(category: "eat", name: "Seabird", address: "40 Blackfriars Road, Southbank", booked: false, details: "Rooftop seafood restaurant with London's longest Oyster list", image_url:"eat/seabird.jpg")
Activity.create!(category: "eat", name: "Chiltern Firehouse", address: "1 Chiltern Street, Marylebone", booked: false, details: "Contemporary ingredient focused cooking in collaboration with renowned Chef Nuno Mendes", image_url: "eat/chiltern.jpg" )
Activity.create!(category: "eat", name: "Dozo", address: "32 Old Compton Street, Soho", booked: false, details: "Private dining area, contemporary Japanese restaurant", image_url: "eat/dozo.jpg")
Activity.create!(category: "eat", name: "Sushi Samba", address: "35 The Market Building, Covent Garden", booked: false, details: "A unique blend of Japanese, Brazilian and Peruvian culture and cuisine.", image_url: "eat/sushisamba.jpg")
Activity.create!(category: "eat", name: "Pizza East", address: "56 SHoreditch High Street, Shoreditch", booked: false, details: "In a former tea warehouse on the corner of Shoreditch High Street and Bethnal Green Road, Pizza East Shoreditch serves seasonal smalls, wood-oven dishes, pizzas and some of the best cured meats & cheese in London.", image_url: "eat/pizza east.jpg")









Activity.create!(category: "play", address: "1 Shoreditch", name: "Bowling", booked: false, details: "3 Lanes at Bowling alley booked, with drinks included." )
Activity.create!(category: "play", address: "1 Islington", name: "Karaoke", booked: false, details: "Private karaoke room.", image_url: "eat/restaurant 2.jpg" )
Activity.create!(category: "play", address: "2 Islington", name: "Simmons Bar", booked: false, details: "Go next door to Simmons bar!", image_url: "eat/restaurant 2.jpg" )
Activity.create!(category: "stay", address: "1 London", name: "The Ritz", booked: false, details: "Stay the night at The Ritz babyy", image_url: "eat/restaurant 2.jpg" )
Activity.create!(category: "stay", address: "London", name: "The W", booked: false, details: "Stay the night at The Ritz babyy", image_url: "eat/restaurant 2.jpg" )
puts "Finished seeding"
