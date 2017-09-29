# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodItem.create(name: "Fries", price: 30.00, food_type: "Fast Food" )
FoodItem.create(name: "Burger", price: 60.00, food_type: "Fast Food" )
FoodItem.create(name: "Mojito", price: 40.00, food_type: "Mocktails" )

PaymentMethod.create(name: "Cash On Delivery")
PaymentMethod.create(name: "Credit Card")
PaymentMethod.create(name: "Debit Card")

TimeSlot.create(name: "10:00 A.M. - 12:00 P.M.")
TimeSlot.create(name: "12:00 P.M. - 02:00 P.M.")
TimeSlot.create(name: "02:00 P.M. - 04:00 P.M.")
TimeSlot.create(name: "04:00 P.M. - 06:00 P.M.")
TimeSlot.create(name: "06:00 P.M. - 08:00 P.M.")
