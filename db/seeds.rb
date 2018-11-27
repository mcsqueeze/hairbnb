# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
Wig.create(title: "Red", user: u1, description: "long, red hair", price: "15.00", photo: "cl_image_tag("20170927163904_28607.jpg")")
Booking.create (start_date: 20181011, end_date: 20181012, user_id: u1, wig_id: 1)
