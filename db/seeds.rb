# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w1 = Wig.create(title: "Red", user: u1, description: "red hair", price: "15")
d1 = DateTime.new(2018, 11, 10)
d2 = DateTime.new(2018, 12, 11)
Booking.create (start_date: d1, end_date: d2, user: u1, wig: w1)
