musician1 = Musician.create(firstname: 'Sample1', lastname: 'Person A', email: 'fake1@example.com', instrument: 'viola')
musician2 = Musician.create(firstname: 'Sample2', lastname: 'Person B', email: 'fake2@example.com', instrument: 'cello')
musician3 = Musician.create(firstname: 'Sample3', lastname: 'Person C', email: 'fake3@example.com', instrument: 'guitar')

venue = Venue.create(address: '110 5th Ave')

instrument1 = Instrument.create(name: 'Guitar')
instrument2 = Instrument.create(name: 'Bass')
instrument3 = Instrument.create(name: 'Drums')
instrument4 = Instrument.create(name: 'Vocals')

jam = Jam.create
jam.musicians << musician1
jam.musicians << musician2
jam.musicians << musician3

musician1.instruments << instrument1
musician2.instruments << instrument4
musician3.instruments << instrument3

jam.instruments << instrument1
jam.instruments << instrument2
jam.instruments << instrument3
jam.instruments << instrument4

jam.venue = venue
jam.save