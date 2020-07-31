# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Event.destroy_all
Todo.destroy_all
User.destroy_all


puts "Seeded"

events = Event.create([{
    name: "Elements",
    image_url: "https://i.imgur.com/V3WecIN.png",
    event_type: "Festival",
    date: "09/25/2020",
    time: "3pm",
    location: "Lakewood, PA",
    event_url: "elementsfest.us",
    price: 50
    },
    {
    name: "Deadmau5",
    image_url: "https://i.imgur.com/qd4yI0L.png",
    event_type: "Concert",
    date: "08/10/2020",
    time: "10pm",
    location: "Brooklyn",
    event_url: "deadmau5.com",
    price: 70
    },
    {
    name: "Swanlake",
    image_url: "https://i.imgur.com/buDhJtb.png",
    event_type: "Ballet",
    date: "11/02/2020",
    time: "7pm",
    location: "NYC",
    event_url: "metopera.org",
    price: 120
    },
    {
    name: "Burning Man",
    image_url: "https://i.imgur.com/rf8SE4j.png",
    event_type: "Festival",
    date: "08/29/2021",
    time: "8am",
    location: "Black Rock Desert",
    event_url: "burningman.org",
    price: 495
    },
    {
    name: "Amalfi Coast",
    image_url: "https://i.imgur.com/snVTPnj.png",
    event_type: "Vacation",
    date: "07/03/2021",
    time: "4am",
    location: "Amalfi Coast, Italy",
    event_url: "amalficoast.com",
    price: 950
    },
    {
    name: "St.Barths",
    image_url: "https://i.imgur.com/FLJRgOV.png",
    event_type: "Vacation",
    date: "some day",
    time: "early morning",
    location: "St.Barths",
    event_url: "st-barths.com",
    price: 2000
    },
    {
    name: "chkchkchk !!!",
    image_url: "https://i.imgur.com/Zx4cLoi.jpg",
    event_type: "Concert",
    date: "11/26/2021",
    time: "9pm",
    location: "Brooklyn, NY",
    event_url: "brooklynbowl.com",
    price: 30
    },
    {
    name: "Columbia Lightweight Rowing",
    image_url: "https://i.imgur.com/8iCpeAP.jpg?1",
    event_type: "sports",
    date: "10/20/2021",
    time: "10am",
    location: "Boston",
    event_url: "colombia.edu",
    price: 20
    },
    {
    name: "Potato Cult Mtg",
    image_url: "https://i.imgur.com/KVJwlxA.png?1",
    event_type: "Cult",
    date: "11/11/2020",
    time: "dusk",
    location: "Prospect Park",
    event_url: "cultpotato.com",
    price: 11
    },
    {
    name: "FIFA World Cup",
    image_url: "https://i.imgur.com/OclySOi.png",
    event_type: "Sports",
    date: "Summer 2026",
    time: "tbd",
    location: "USA",
    event_url: "fifa.om",
    price: 500
    },
    {
    name: "NBA Playoffs",
    image_url: "https://i.imgur.com/h3KkRwP.jpg",
    event_type: "Sports",
    date: "03/15/2021",
    time: "6pm",
    location: "Los Angeles",
    event_url: "nba.om",
    price: 150
    },
    {
    name: "Hamilton",
    image_url: "https://i.imgur.com/3l4Bzvi.jpg",
    event_type: "Musical",
    date: "4/20/2021",
    time: "8pm",
    location: "NYC",
    event_url: "broadway.com",
    price: 385
    }

])

todos = Todo.create([{
    date: "08/04/2020",
    item: "pre-order tents and bedding, rent car for Elements",
    completed: false
    },
    {
    date: "09/10/2020",
    item: "order food and drinks for Elements"
    completed: false
    },
    {
    date: "10/20/2020",
    item: "reserve restaurant after Swanlake",
    completed: false
    }
])




User.create(
    name: "Kat",
    password_digest: "123"
    age: 35,
    location: Brooklyn, NY,
    bio: "Quarantined but uncontained adventurer. Creature of havoc. Jack of all trades, master of some."
    image_url: "https://i.imgur.com/td8DG0k.jpg?1"
    )
end




    # favorites = Favorite.create([{
    #     user_id: 1,
    #     event_id: 1
    #     },
    #     {
    #     user_id: 1,
    #     event_id: 3
    #     },
    #     {
    #     user_id: 2,
    #     event_id: 3
    #     },
    #     {
    #     user_id: 3,
    #     event_id: 6
    #     },
    #     {
    #     user_id: 3,
    #     event_id: 5
    #     }
    # ])
