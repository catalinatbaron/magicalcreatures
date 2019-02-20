# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ' Destroying all the shit'

Booking.destroy_all
Review.destroy_all


Creature.destroy_all
User.destroy_all


puts 'completed'



puts 'Building some users'

user1 = User.create!(name:'Kurt Cobain', email: 'kurco@gmail.com', password:'rocknroll')
user2 = User.create!(name:'Sid Barret', email: 'sidbarret@gmail.com', password:'rocknroll')
user3 = User.create!(name:'Amy Winehouse', email: 'amywinehouse@gmail.com', password:'rocknroll')
user4 = User.create!(name:'Rick Sanchez', email: 'rickisdope@gmail.com', password:'rocknroll')
user5 = User.create!(name:'Morty Smith ', email: 'msmith@gmail.com', password:'rocknroll')

puts 'Making some creatures'
creature1 = Creature.create!(name:'Unicorn', super_power:'I believe I can fly', price:'100', user_id: user2.id, remote_photo_url: "https://i.pinimg.com/564x/c1/65/f4/c165f409a2846a67d7e023953f1c614a.jpg?b=t")
creature2 = Creature.create!(name:'Flying Camel', super_power:"I'll take you to your destiny", price:'200', user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/74/24/24/742424c9e132a0be41beaad4dda34132.jpg?b=t")
creature3 = Creature.create!(name:'Dragon', super_power:'Fire', price:'150',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/75/71/96/757196a3684622065bb06090129cc9a5.jpg?b=t")
creature4 = Creature.create!(name:'Elf', super_power:'I believe I can fly', price:'100',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/db/b1/cf/dbb1cf874ebb97338b87ae74d1cc0492.jpg?b=t")
creature5 = Creature.create!(name:'Fairy', super_power:'I can make your dreams come true', price:'120',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/a2/06/88/a206889f40b72ff17a688c95a17215d5.jpg")

puts 'Nice bookings '
booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user1.id, creature_id: creature1.id)
booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user2.id, creature_id: creature2.id)
booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature3.id)
booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user4.id, creature_id: creature4.id)
booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user5.id, creature_id: creature5.id)
booking1 = Booking.create!(start_time: DateTime.new(2010,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user1.id, creature_id: creature2.id)


puts 'Amy Winehouse loves all kinds of creatures!'
booking6 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature1.id)
booking7 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature2.id)
booking8 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature3.id)
booking9 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature4.id)



puts 'Fucking good reviews'

puts 'Yeah'
review1 = Review.create!(description: 'That unicorn really wanna make me kill myself', rating: 1)
booking6.update(review_id: review1.id)
review2 = Review.create!(description: 'This flying camel is killing it!', rating: 5)
booking7.update(review_id: review2.id)
review3 = Review.create!(description: 'This dragon has anger issues', rating: 2)
booking8.update(review_id: review3.id)
review4 = Review.create!(description: 'Cutie', rating: 5)
booking9.update(review_id: review4.id)


puts 'the end!'
