User.create!(username: 'jseinfeld',
             email:    'jseinfeld@hello.com',
             password: 'helloworld'
             )

Ride.create!(title: "Willis Tower to Revzilla",
             starting_city: 'Chicago',
             ending_city: 'Philadelphia',
             starting_address: '233 S Wacker Dr, Chicago, IL 60606',
             ending_address: '4020 S 26th St, Philadelphia, PA',
             distance_in_miles: 760,
             star_rating: 5,
             author_id: 1)