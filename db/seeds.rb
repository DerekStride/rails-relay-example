# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mitchell = Author.create!(name: 'Mitch Mulligan')
derek = Author.create!(name: 'Derek Dobbler')

mitchell.comments.create!(body: 'First')

derek.comments.create!(body: 'inb4 First')

mitchell.comments.create!(body: 'Lawl')
mitchell.comments.create!(body: "Skateboard tattooed scenester chambray, portland celiac gastropub yr mustache fixie humblebrag jean shorts. Selvage DIY yuccie, banjo raw denim banh mi listicle hella distillery master cleanse unicorn yr chia portland. Dreamcatcher williamsburg actually 90's, chillwave meditation ethical shoreditch shabby chic. Lyft everyday carry master cleanse raw denim freegan flexitarian.")

derek.comments.create!(body: 'whoops')
