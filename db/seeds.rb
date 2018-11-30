# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w1 = Wig.new(title: "Amy Adams", user: User.first, description: "gorgeous, wavy, red hair", price: "25.00")
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
w9.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543492945/d3dfzkx4ifxxw8jss52m.jpg"
w9.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w9)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w10 = Wig.new(title: "Angelina Jolie", user: User.first, description: "long, beautiful hair", price: "25.00")
w10.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543422532/oqko4y5wj1u9i87oc9jr.jpg"
w10.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w10)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w11 = Wig.new(title: "Trevor Noah", user: User.first, description: "short, brown hair", price: "15.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/c_scale,w_120/v1543314164/gex_mens_toupee_12R_59443aad-f84d-4a16-a054-eb4d27289884.jpg")
w11.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543409010/omggfmbgvl0fqpvzfhr8.webp"
w11.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w11)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w12 = Wig.new(title: "Chrissy Tiegan", user: User.first, description: "Boss lady hair", price: "55.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313864/4_5.jpg")
w12.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313583/XMKY170214WIG2.jpg"
w12.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w12)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w13 = Wig.new(title: "Sam Smith", user: User.first, description: "short, brown hair", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w13.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313124/toupee-1.jpg"
w13.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w13)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w14 = Wig.new(title: "Justin Timberlake", user: User.first, description: "stylish, cropped hair", price: "25.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543393648/20170927163904_28607")
w14.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313308/quiff-co-ultra-realistic-waterproof-toupee-640x533.jpg"
w14.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w14)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w15 = Wig.new(title: "Derek Zoolander", user: User.first, description: "ridiculously good looking hair", price: "15.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/c_scale,w_120/v1543314164/gex_mens_toupee_12R_59443aad-f84d-4a16-a054-eb4d27289884.jpg")
w15.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313976/61TzYi-KlmL._SY355_.jpg"
w15.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w15)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w16 = Wig.new(title: "Cher", user: User.first, description: "always classic hair", price: "55.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313864/4_5.jpg")
w16.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543313805/ls.jpg"
w16.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w16)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w17 = Wig.new(title: "Angela Merkel", user: User.first, description: "world leader hair", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w17.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312787/61Rez2zdd5L.jpg"
w17.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w17)

u1 = User.create(email: "margaux@gmail.com", password: "margaux", usertype: "lender")
w18 = Wig.new(title: "Adele", user: User.first, description: "tearjerkingly beautiful hair", price: "35.00", photo: "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312966/90485_crop.gif")
w18.remote_photo_url = "http://res.cloudinary.com/dtqkxojhd/image/upload/v1543312864/lace-encia_L-171127045718.jpg"
w18.save
d1 = Date.new(2018,11,3)
d2 = Date.new(2018,11,4)
Booking.create(start_date: d1, end_date: d2, user: User.first, wig: w18)
