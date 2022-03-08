# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all

Car.create(year: 1968, make: 'Dodge', model: 'Dart GTS', mileage: 75000)
Car.create(year: 1955, make: 'Ford', model: 'Thunderbird', mileage: 150000)
Car.create(year: 2015, make: 'Jeep', model: 'Patriot', mileage: 70000)
Car.create(year: 2018, make: 'Volkswagen', model: 'Golf GTI', mileage: 25000)
Car.create(year: 1963, make: 'Plymouth', model: 'Valiant', mileage: 130000)

puts "Seeded facts size: #{Car.all.size}"