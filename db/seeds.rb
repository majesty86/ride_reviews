User.create!(username: 'jseinfeld',
             email:    'jseinfeld@hello.com',
             password: 'helloworld'
             )

Ride.create!(starting_town: 'Chicago',
             ending_town: 'Philadelphia',
             starting_intersection: 'Jackson & Wacker',
             ending_intersection: '26th and Penrose Ferry',
             distance_in_miles: 760,
             star_rating: 5,
             author_id: 1)