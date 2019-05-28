# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Trip.destroy_all


a = User.create(username: "austen", password: "password")
h = User.create(username: "hanna", password: "password1")

Trip.create(name: "Hawaii Trip", destination: "Maui", user: a)
Trip.create(name: "Disney World", destination: "Orlando, FL", user: a)
