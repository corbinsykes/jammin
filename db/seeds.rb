Musician.create(firstname: 'Sample1', lastname: 'Person A', email: 'fake1@example.com', instrument: 'viola')
Musician.create(firstname: 'Sample2', lastname: 'Person B', email: 'fake2@example.com', instrument: 'cello')
Musician.create(firstname: 'Sample3', lastname: 'Person C', email: 'fake3@example.com', instrument: 'guitar')

Venue.create(address: '110 5th Ave', zipcode: '10011', start_time: Time.now, end_time: Time.local(2013, 'aug', 5, 23, 15))

JamSession.create(venue_id: 1, musician_id: 1, )
JamSession.create(venue_id: 1, musician_id: 2)
