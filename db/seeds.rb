# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Running seed file"

User.destroy_all
# Event.destroy_all


puts "All users and events destroyed!!"
puts "Creating new users, 1 event and some activities!"

Event.create(start_date: Date.today, end_date: Date.today, location: "London", name: "Tilly")

User.create(first_name: "Tilly", last_name: "Bishop", event_id: Event.last.id, email: "tilly@tilly.com", password: "123456")
User.create(first_name: "Olivia", last_name: "McSweeney", event_id: Event.last.id, email: "olivia@olivia.com", password: "123456")
User.create(first_name: "Craig", last_name: "Norford", event_id: Event.last.id, email: "craig@craig.com", password: "123456")
User.create(first_name: "Emily", last_name: "Tregelles", event_id: Event.last.id, email: "emily@emily.com", password: "123456")

Activity.create(date: Date.today, event: Event.last, start_time: '12:00', end_time: '14:00', category: "eat", address: "1 Hoxton", name: "Dishoom", booked: true, saved: true, details: "Round table booked outside.", image: 'image_tag("restaurant 2.jpg")')
Activity.create(date: Date.today, event: Event.last, start_time: '14:00', end_time: '15:00', category: "go", name: "Taxi", booked: true, saved: true, details: "Taxis to take us from Dishoom to bowling." )
Activity.create(date: Date.today, event: Event.last, start_time: '15:00', end_time: '17:00', category: "play", address: "1 Shoreditch", name: "Bowling", booked: true, saved: true, details: "3 Lanes at Bowling alley booked, with drinks included." )
Activity.create(date: Date.today, event: Event.last, start_time: '17:00', end_time: '17:30', category: "go", name: "Tube", booked: true, saved: true, details: "Take tube to dinner." )
Activity.create(date: Date.today, event: Event.last, start_time: '17:30', end_time: '20:00', category: "eat", address: "1 Haggerston", name: "Glorias", booked: true, saved: true, details: "Private room for dinner." )
Activity.create(date: Date.today, event: Event.last, start_time: '20:00', end_time: '20:15', category: "go", name: "Tube", booked: true, saved: true, details: "Take tube one stop to karaoke." )
Activity.create(date: Date.today, event: Event.last, start_time: '20:15', end_time: '22:00', category: "play", address: "1 Islington", name: "Karaoke", booked: true, saved: true, details: "Private karaoke room." )
Activity.create(date: Date.today, event: Event.last, start_time: '22:00', end_time: '24:00', category: "play", address: "2 Islington", name: "Simmons Bar", booked: true, saved: true, details: "Go next door to Simmons bar!" )
Activity.create(date: Date.today, event: Event.last, start_time: '24:00', category: "stay", address: "1 London", name: "The Ritz", booked: true, saved: true, details: "Stay the night at The Ritz babyy" )

puts "Finished seeding"
