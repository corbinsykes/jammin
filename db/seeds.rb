# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(firstname: 'Sample', lastname: 'Person A', email: 'fake1@example.com', instrument: 'viola')
User.create(firstname: 'Sample', lastname: 'Person B', email: 'fake2@example.com', instrument: 'cello')
User.create(firstname: 'Sample', lastname: 'Person C', email: 'fake3@example.com', instrument: 'guitar')