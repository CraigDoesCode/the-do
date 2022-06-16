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

Event.create!(start_date: Date.new(2022,8,12), end_date: Date.new(2022,8,14), location: "London", name: "James")

User.create!(first_name: "Tilly", last_name: "Bishop", event_id: Event.last.id, email: "tilly@tilly.com", password: "123456")
User.create!(first_name: "Olivia", last_name: "McSweeney", event_id: Event.last.id, email: "olivia@olivia.com", password: "123456")
User.create!(first_name: "Craig", last_name: "Norford", event_id: Event.last.id, email: "craig.norford@gmail.com", password: "123456")
User.create!(first_name: "Emily", last_name: "Tregelles", event_id: Event.last.id, email: "emily@emily.com", password: "123456")

# go activities
Activity.create(category: "go", name: "Walk", booked: true, details: "Take tube to dinner.")
Activity.create(category: "go", name: "Taxi", booked: true, details: "Taxis to take us from Dishoom to bowling.")
Activity.create(category: "go", name: "Public Transport", booked: true, details: "Take tube one stop to karaoke.")
# ATTEMPTED IMAGE > Activity.create(date: Date.today, start_time: '12:00', end_time: '14:00', category: "eat", address: "1 Hoxton", name: "Dishoom", booked: true, details: "Round table booked outside.", image: '/images/restaurant 1.jpg')

# All other activities
activities = [
  # Eat
  Activity.create!(category: "eat", address: "Hoxton", name: "Dishoom", booked: false, details: "Round table booked outside.", image_url: "eat/restaurant 1.jpg"),
  Activity.create!(category: "eat", address: "Haggerston", name: "Glorias", booked: false, details: "Private room for dinner and great pizza.", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "eat", name: "Mnky Hse", address: "Mayfair", booked: false, details: "Latin American late night restaurant with DJ.", image_url:"eat/mnkyhse.jpg" ),
  Activity.create!(category: "eat", name: "Seabird", address: "Southbank", booked: false, details: "Rooftop seafood restaurant with London's longest Oyster list", image_url:"eat/seabird.jpg"),
  Activity.create!(category: "eat", name: "Chiltern Firehouse", address: "Marylebone", booked: false, details: "Contemporary ingredient focused cooking in collaboration with renowned Chef Nuno Mendes", image_url: "eat/chiltern.jpg" ),
  Activity.create!(category: "eat", name: "Dozo", address: "Soho", booked: false, details: "Private dining area, contemporary Japanese restaurant", image_url: "eat/dozo.jpg"),
  Activity.create!(category: "eat", name: "Sushi Samba", address: "Covent Garden", booked: false, details: "A unique blend of Japanese, Brazilian and Peruvian culture and cuisine.", image_url: "eat/sushisamba.jpg"),
  Activity.create!(category: "eat", name: "Pizza East", address: "Shoreditch", booked: false, details: "In a former tea warehouse on the corner of Shoreditch High Street and Bethnal Green Road, Pizza East Shoreditch serves seasonal smalls, wood-oven dishes, pizzas and some of the best cured meats & cheese in London.", image_url: "eat/pizza east.jpg"),
  Activity.create!(category: "eat", name: "Pizza Pilgrims", address: "Shoreditch", booked: false, details: "Serves slow proved Neapolitan pizza in both our pizzerias. All of our dough is made fresh daily and we source the best ingredients!", image_url: "eat/pizzapilgrims.jpg"),
  Activity.create!(category: "eat", name: "Tonkotsu", address: "Hackney", booked: false, details: "The best Japanese noodles this side of town.", image_url: "eat/tonkotsu.jpg"),



  # Play
  Activity.create!(category: "play", address: "Shoreditch", name: "Bowling", booked: false, details: "3 Lanes at Bowling alley booked, with drinks included.", image_url: "bowling.jpg" ),
  Activity.create!(category: "play", address: "Islington", name: "Karaoke", booked: false, details: "Private karaoke room.", image_url: "karaoke.jpg" ),
  Activity.create!(category: "play", address: "Islington", name: "Simmons Bar", booked: false, details: "Go next door to Simmons bar!", image_url: "eat/restaurant 2.jpg" ),
  Activity.create!(category: "play", address: "Surrey", name: "Paint Ball", booked: false, details: "Low impact paint ball, the fun without the bruises!", image_url: "play/paintball2.jpg" ),
  Activity.create!(category: "play", address: "Surrey", name: "Zorbing", booked: false, details: "Hurtling down a hill in a HUGE inflatable double layered Zorbing ball!", image_url: "play/zorbing.jpg" ),
  Activity.create!(category: "play", address: "Chelsea", name: "Embargo Republica", booked: false, details: "Bringing a slice of Cuban coolness to Kings Road, one of best places to go clubbing in London!", image_url: "play/embargo.jpg" ),
  Activity.create!(category: "play", address: "Northolt", name: "Quad Biking", booked: false, details: "This thrilling off-road riding centre boasts terrific facilities, making it the perfect place to hold a stag, hen or social event.", image_url: "quad.jpg" ),
  Activity.create!(category: "play", address: "Fitzrovia", name: "Salsa Dancing", booked: false, details: "Learn how to Salsa with some of London's top professionals.", image_url: "salsa dancing.jpg" ),
  Activity.create!(category: "play", address: "Farringdon", name: "Puppy Yoga", booked: false, details: "Puppy yoga is the combination of yoga and pure puppy cuddles in a stress-free environment.", image_url: "puppy.jpg" ),
  Activity.create!(category: "play", address: "Hackney Wick", name: "Pottery Class", booked: false, details: "Channel your inner Demi Moore and Patrick Swayze and mould some clay.", image_url: "pottery.jpg" ),
  Activity.create!(category: "play", address: "Maida Vale", name: "Paddle Boarding", booked: false, details: "Tour on the London canals on a paddle board. Try not to fall in.", image_url: "paddleboard.jpg" ),

  # Stay
  Activity.create!(category: "stay", address: "Shoreditch", name: "One Hundred Shoreditch", booked: false, details: "Located on Shoreditch High Street, One Hundred Shoreditch is home to 258 hotel bedrooms and suites, six restaurants and bars, plus five meeting and event spaces.", image_url: "100shoreditch.jpg" ),
  Activity.create!(category: "stay", address: "Green Park", name: "The Ritz", booked: false, details: "Legendary Hotel is a must exerience at least onece in your lifetime", image_url: "ritz.jpg" ),
  Activity.create!(category: "stay", address: "Fitzrovia", name: "The London Edition", booked: false, details: "Located in Fitzrovia on the edge of Soho, the boutique hotel blends thoughtful design and intuitive service with excellent dining and nightlife in a space that boldly brings together the past with the present.", image_url: "edition.jpg" ),
  Activity.create!(category: "stay", address: "Covent Garden", name: "The NoMad", booked: false, details: "NoMad London takes residence inside the historic, grade II-listed building famously known as The Bow Street Magistrates’ Court and Police Station.", image_url: "nomad.jpg" ),
  Activity.create!(category: "stay", address: "Leicester Square", name: "The W", booked: false, details: "Amazing stays blending comfort and culture at The W", image_url: "W_hotel.jpg" ),
  Activity.create!(category: "stay", address: "Ham Yard", name: "The Ham Yard Hotel", booked: false, details: "In the midst of Soho and moments from Mayfair, Ham Yard has an urban village feel.", image_url: "hamyard.jpg" )

]

Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 10, 00), end_time: Time.new(2022,8,12, 12, 00), event: Event.last, activity: Activity.where(name: "Quad Biking")[0] )
Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 13, 00), end_time: Time.new(2022,8,12, 15, 00), event: Event.last, activity: Activity.where(name: "Pizza East")[0] )
Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 16, 00), end_time: Time.new(2022,8,12, 18, 00), event: Event.last, activity: Activity.where(name: "Karaoke")[0]  )
Plan.create!(date: Date.new(2022,8,12), start_time: Time.new(2022,8,12, 19, 00), end_time: Time.new(2022,8,12, 22, 00), event: Event.last, activity: Activity.where(name: "Dishoom")[0]  )
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 12, 00), end_time: Time.new(2022,8,12, 15, 00), event: Event.last, activity: Activity.where(name: "Zorbing")[0]  )
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 16, 00), end_time: Time.new(2022,8,12, 18, 00), event: Event.last, activity: Activity.where(name: "Seabird")[0]   )
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 19, 00), end_time: Time.new(2022,8,12, 21, 30), event: Event.last, activity: Activity.where(name: "Simmons Bar")[0])
Plan.create!(date: Date.new(2022,8,13), start_time: Time.new(2022,8,12, 22, 00), end_time: Time.new(2022,8,12, 23, 30), event: Event.last, activity: Activity.where(name: "Embargo Republica")[0])
puts "Finished seeding"
