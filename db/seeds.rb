# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w1 = Wig.new(title: "Ruby Red", user: User.first, description: "long, gorgeous, way, red hair", price: "25.00")
w1.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543393648/20170927163904_28607"
w1.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w1)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w2 = Wig.new(title: "Robert Redford", user: User.first, description: "short, brown hair", price: "15.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/c_scale,w_120/v1543314164/gex_mens_toupee_12R_59443aad-f84d-4a16-a054-eb4d27289884.jpg")
w2.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409010/omggfmbgvl0fqpvzfhr8.webp"
w2.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w2)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w3 = Wig.new(title: "Oprah Winfrey", user: User.first, description: "Boss lady", price: "55.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313864/4_5.jpg")
w3.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409220/o51nxqks9utttezo5z2i.jpg"
w3.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w3)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w4 = Wig.new(title: "Mr. Bean", user: User.first, description: "gelled beyond reason", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w4.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409330/dt6l6qtjnz2ouruzz2uu.gif"
w4.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w4)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w5 = Wig.new(title: "Michael Meyers", user: User.first, description: "scary good hair", price: "25.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543393648/20170927163904_28607")
w5.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543411702/ly0c1e4gdckyvvqry31a.jpg"
w5.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w5)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w6 = Wig.new(title: "Marilyn Monroe", user: User.first, description: "million dollar hair", price: "15.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/c_scale,w_120/v1543314164/gex_mens_toupee_12R_59443aad-f84d-4a16-a054-eb4d27289884.jpg")
w6.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409447/v4t5a7grfvs1jueeuodl.jpg"
w6.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w6)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w7 = Wig.new(title: "Lady Gaga", user: User.first, description: "starstruck hair", price: "55.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313864/4_5.jpg")
w7.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543412883/hbybuvmssht4rxt7uuu2.jpg"
w7.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w7)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w8 = Wig.new(title: "The Trump", user: User.first, description: "wispy blonde hair", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w8.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409591/v6jmfz2rprfnckh5bcne.jpg"
w8.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w8)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w9 = Wig.new(title: "Emanual Macron", user: User.first, description: "professional brown hair", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w9.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409093/rrqtm6ghvqogdeols0hc.jpg"
w9.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w9)
