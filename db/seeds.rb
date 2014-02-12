# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

props = Prop.create([{author: "Hami", recipient: "Jen", reason: "For teaching this lesson!"},
					{author: "Meredith", recipient: "Lorin", reason: "For being a swell guy"},
					{author: "ABC", recipient: "DEF", reason: "For being useful."}
					])