# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ConcertHall.create({name: 'The Crazy Donkey', city: 'Farmingdale', state: 'NY'})
Band.create({name: 'Midnight In Motion', genre: 'Pop'})
Event.create({date: '08/25/15', band_id: 1, concert_hall_id: 1})
