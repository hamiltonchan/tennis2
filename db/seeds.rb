# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
courts = Court.create([ {court_num: 1, booked: true},
						{court_num: 2, booked: false},
						{court_num: 3, booked: false},
						{court_num: 4, booked: true}])