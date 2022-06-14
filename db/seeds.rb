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

Event.create!(start_date: Date.new(2022,8,12), end_date: Date.new(2022,8,12), location: "London", name: "Tilly")

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
activities = [
  Activity.create!(category: "eat", address: "1 Hoxton", name: "Dishoom", booked: false, details: "Round table booked outside.", image_url: "eat/restaurant 1.jpg"),
  Activity.create!(category: "play", address: "1 Shoreditch", name: "Bowling", booked: false, details: "3 Lanes at Bowling alley booked, with drinks included." ),
  Activity.create!(category: "eat", address: "1 Haggerston", name: "Glorias", booked: false, details: "Private room for dinner.", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "play", address: "1 Islington", name: "Karaoke", booked: false, details: "Private karaoke room.", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "play", address: "2 Islington", name: "Simmons Bar", booked: false, details: "Go next door to Simmons bar!", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "stay", address: "1 London", name: "The Ritz", booked: false, details: "Stay the night at The Ritz babyy", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "stay", address: "London", name: "The W", booked: false, details: "Stay the night at The Ritz babyy", image_url: "eat/restaurant 2.jpg" )
]

Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 10, 00), end_time: Time.new(2022,8,12, 11, 00), event: Event.last, activity: activities.sample )
Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 12, 00), end_time: Time.new(2022,8,12, 13, 00), event: Event.last, activity: activities.sample )
Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 14, 00), end_time: Time.new(2022,8,12, 15, 00), event: Event.last, activity: activities.sample )
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 16, 00), end_time: Time.new(2022,8,12, 17, 00), event: Event.last, activity: activities.sample )
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 18, 00), end_time: Time.new(2022,8,12, 19, 00), event: Event.last, activity: activities.sample )

puts "Finished seeding"
