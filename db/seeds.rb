# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Event.destroy_all
User.destroy_all


puts "Seeded"

    # events = Event.create([{
    #     name: "Elements Festival",
    #     event_type: "Festival",
    #     image_url: "some image url",
    #     date: "09/25/2020",
    #     time: "3pm",
    #     event_url: "elementsfest.us",
    #     ticket: false
    #     },
    #     {
    #     name: "Deadmau5",
    #     event_type: "Concert",
    #     image_url: "some image url",
    #     date: "08/10/2020",
    #     time: "10pm",
    #     event_url: "deadmau5.com",
    #     ticket: true
    #     },
    #     {
    #     name: "Swanlake",
    #     event_type: "Ballet",
    #     image_url: "some image url",
    #     date: "11/02/2020",
    #     time: "7pm",
    #     event_url: "metopera.org",
    #     ticket: true
    #     },
    #     {
    #     name: "Burning Man",
    #     event_type: "Not a festival",
    #     image_url: "some image url",
    #     date: "08/29/2021",
    #     time: "8am",
    #     event_url: "burningman.org",
    #     ticket: true
    #     },
    #     {
    #     name: "Amalfi Coast Trip",
    #     event_type: "Family Vacation",
    #     image_url: "some image url",
    #     date: "06/29/2021",
    #     time: "4am",
    #     event_url: "amalficoast.com",
    #     ticket: false
    #     },
    #     {
    #     name: "Birthday Surpise for Mehdi",
    #     event_type: "Party",
    #     image_url: "some image url",
    #     date: "07/13/2020",
    #     time: "3pm",
    #     event_url: "Color correction glasses and sunset vibes",
    #     ticket: false
    #     },
    #     {
    #     name: "Mini Burn",
    #     event_type: "Festival",
    #     image_url: "some image url",
    #     date: "08/25/2020",
    #     time: "3pm",
    #     event_url: "Burn pit and ATVs",
    #     ticket: false
    #     }
    # ])

    3.times do
        User.create(
            name: Faker::Name.unique.name,
            age: Faker::Number.number(digits: 2),
            location: Faker::Address.city,
            bio: Faker::TvShows::SiliconValley.unique.quote,
            interests: Faker::Book.unique.genre,
            image_url: "https://www.getaway.co.za/wp-content/uploads/2020/03/Baby-sloth.png"
        )
    end

    # tod = Resource.create([{

    #     title: "Open Your Lobby",
    #     location: "Various locations Brooklyn",
    #     image: "some image url",
    #     zip: "all",
    #     url: "https://www.6sqft.com/here-are-the-nyc-museums-and-theaters-opening-their-lobbies-to-help-protestors/",
    #     info: "Businesses and institutions all over NYC offer comfort stations, drinks, snacks, and phone charging to protesters"
    #     },
    #     {
    #     title: "Know your rights",
    #     location: "USA",
    #     image: "some image url",
    #     zip: "all",
    #     url: "https://www.aclu.org/know-your-rights/protesters-rights/",
    #     info: "The First Amendment protects your right to assemble and express your views through protest."
    #     },
    #     {
    #     title: "What to bring to a protest",
    #     location: "USA",
    #     image: "some image url",
    #     zip: "all",
    #     url: "https://www.amnestyusa.org/pdfs/SafeyDuringProtest_F.pdf",
    #     info: "Practical tips for which equipment to bring, which items to avoid, and how to stay safe at protests"
    #     },
    # ])


    user_events = UserEvent.create([{
        user_id: 1,
        event_id: 1
        },
        {
        user_id: 1,
        event_id: 3
        },
        {
        user_id: 2,
        event_id: 3
        },
        {
        user_id: 3,
        event_id: 6
        },
        {
        user_id: 3,
        event_id: 5
        }
    ])
