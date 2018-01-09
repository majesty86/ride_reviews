User.create!(username: 'jseinfeld',
             email:    'jseinfeld@hello.com',
             password: 'helloworld'
             )

Ride.create!(title: "Willis Tower to Revzilla",
             starting_city: 'Chicago',
             starting_state: 'IL',
             ending_city: 'Philadelphia',
             ending_state: 'PA',
             starting_address: '233 S Wacker Dr.',
             ending_address: '4020 S 26th St.',
             distance_in_miles: 760,
             star_rating: 5,
             author_id: 1)