# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w1 = Wig.create(title: "Ruby Red", user: User.first, description: "long, gorgeous, way, red hair", price: "15.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543393648/20170927163904_28607.jpg")
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w1)

