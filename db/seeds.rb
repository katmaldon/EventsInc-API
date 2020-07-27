# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Event.destroy_all
# Todo.destroy_all
# User.destroy_all


puts "Seeded"

events = Event.create([{
    name: "Elements",
    image_url: "https://i.imgur.com/V3WecIN.png",
    event_type: "festival",
    date: "09/25/2020",
    time: "3pm",
    location: "Lakewood, PA",
    event_url: "elementsfest.us",
    price: 50
    },
    {
    name: "Deadmau5",
    image_url: "https://i.imgur.com/qd4yI0L.png",
    event_type: "concert",
    date: "08/10/2020",
    time: "10pm",
    location: "Brooklyn",
    event_url: "deadmau5.com",
    price: 70
    },
    {
    name: "Swanlake",
    image_url: "https://i.imgur.com/buDhJtb.png",
    event_type: "ballet",
    date: "11/02/2020",
    time: "7pm",
    location: "NYC",
    event_url: "metopera.org",
    price: 120
    },
    {
    name: "Burning Man",
    image_url: "https://i.imgur.com/rf8SE4j.png",
    event_type: "festival",
    date: "08/29/2021",
    time: "8am",
    location: "Black Rock Desert",
    event_url: "burningman.org",
    price: 495
    },
    {
    name: "Amalfi Coast Trip",
    image_url: "https://i.imgur.com/snVTPnj.png",
    event_type: "family vacation",
    date: "07/03/2021",
    time: "4am",
    location: "Amalfi Coast, Italy",
    event_url: "amalficoast.com",
    price: 950
    },
    {
    name: "St.Barths",
    image_url: "https://i.imgur.com/FLJRgOV.png",
    event_type: "not a family vacation",
    date: "some day",
    time: "early morning",
    location: "St.Barths",
    event_url: "st-barths.com",
    price: 2000
    }
])

# todos = Todo.create([{
#     date: "08/04/2020",
#     item: "pre-order tents and bedding, rent car for Elements"
#     },
#     {
#     date: "09/10/2020",
#     item: "order food and drinks for Elements"
#     },
#     {
#     date: "10/20/2020",
#     item: "reserve restaurant after Swanlake"
#     }
# ])



    # 3.times do
    #     User.create(
    #         name: Faker::Name.unique.name,
    #         age: Faker::Number.number(digits: 2),
    #         location: Faker::Address.city,
    #         bio: Faker::TvShows::SiliconValley.unique.quote,
    #         interests: Faker::Book.unique.genre,
    #         image_url: "https://www.getaway.co.za/wp-content/uploads/2020/03/Baby-sloth.png"
    #     )
    # end




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
