# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = Artist.create(first_name: 'John', last_name: 'Lennon')
paul = Artist.create(first_name: 'Paul', last_name: 'McCartney')
ringo = Artist.create(first_name: 'Ringo', last_name: 'Starr')
george = Artist.create(first_name: 'George', last_name: 'Harrison')

beatles = Band.create(name: 'Beatles')

norwegianwood = Single.create(band_id: 1, name: 'Norwegian Wood')

norwegianwood1 = Recording.create(name: 'Norwegian Wood1', single_id: 1)
norwegianwood2 = Recording.create(name: 'Norwegian Wood2', single_id: 1)
norwegianwood3 = Recording.create(name: 'Norwegian Wood3', single_id: 1)

Collaboration.create(artist_id: 1, band_id: 1)
Collaboration.create(artist_id: 2, band_id: 1)
Collaboration.create(artist_id: 3, band_id: 1)
Collaboration.create(artist_id: 4, band_id: 1)