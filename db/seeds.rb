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
# User.destroy_all


puts "Seeded"

events = Event.create([{
    name: "Elements",
    event_type: "festival",
    image_url: "https://i.imgur.com/V3WecIN.png",
    date: "09/25/2020",
    time: "3pm",
    event_url: "elementsfest.us",
    ticket: false
    },
    {
    name: "Deadmau5",
    event_type: "concert",
    image_url: "https://i.imgur.com/qd4yI0L.png",
    date: "08/10/2020",
    time: "10pm",
    event_url: "deadmau5.com",
    ticket: true
    },
    {
    name: "Swanlake",
    event_type: "ballet",
    image_url: "https://i.imgur.com/buDhJtb.png",
    date: "11/02/2020",
    time: "7pm",
    event_url: "metopera.org",
    ticket: true
    },
    {
    name: "Burning Man",
    event_type: "not a festival",
    image_url: "https://i.imgur.com/rf8SE4j.png",
    date: "08/29/2021",
    time: "8am",
    event_url: "burningman.org",
    ticket: true
    },
    {
    name: "Amalfi Coast Trip",
    event_type: "family vacation",
    image_url: "https://i.imgur.com/snVTPnj.png",
    date: "07/03/2021",
    time: "4am",
    event_url: "amalficoast.com",
    ticket: false
    },
    {
    name: "St.Barths",
    event_type: "not a family vacation",
    image_url: "https://i.imgur.com/FLJRgOV.png",
    date: "some day",
    time: "early morning",
    event_url: "st-barths.com",
    ticket: false
    }
])

todos = Todo.create([{
    date: "08/04/2020",
    item: "pre-order tents and bedding, rent car for Elements"
    },
    {
    date: "09/10/2020",
    item: "order food and drinks for Elements"
    },
    {
    date: "10/20/2020",
    item: "reserve restaurant after Swanlake"
    }
])



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




    # user_events = UserEvent.create([{
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
