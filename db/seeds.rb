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
creature3 = Creature.create!(name:'Dragon', super_power:'Fire', price:'150',user_id: user1.id, remote_photo_url: "https://i.pinimg.com/564x/75/71/96/757196a3684622065bb06090129cc9a5.jpg?b=t")
creature4 = Creature.create!(name:'Elf', super_power:'I believe I can fly', price:'100',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/db/b1/cf/dbb1cf874ebb97338b87ae74d1cc0492.jpg?b=t")
creature5 = Creature.create!(name:'Fairy', super_power:'I can make your dreams come true', price:'120',user_id: user1.id, remote_photo_url: "https://i.pinimg.com/564x/a2/06/88/a206889f40b72ff17a688c95a17215d5.jpg")
creature6 = Creature.create!(name:'Super cat', super_power:'Fly so high', price:'140',user_id: user2.id, remote_photo_url: "https://i.pinimg.com/originals/ff/83/74/ff8374fc6161b8fd0256e6ec71e228b2.jpg")
creature7 = Creature.create!(name:'Alien', super_power:'Emits dangerous radiation', price:'40',user_id: user1.id, remote_photo_url: "https://66.media.tumblr.com/f6c79b79ba85b5690f908c0aac26d818/tumblr_nwt0dqYR2F1ua75ulo1_540.png")
creature8 = Creature.create!(name:'Ghost', super_power:'Invisible', price:'220',user_id: user1.id, remote_photo_url: "https://cdn.dribbble.com/users/39185/screenshots/2448264/ghost.jpg")
creature9 = Creature.create!(name:'Mermaid', super_power:'Can hypnotize anyone with my songs', price:'300',user_id: user2.id, remote_photo_url: "https://i.pinimg.com/564x/13/65/7a/13657a3920e5229061c8dddb27290d5f.jpg")
creature10 = Creature.create!(name:'Giant', super_power:'Always reach the top shelf', price:'150',user_id: user3.id, remote_photo_url: "https://static1.squarespace.com/static/52d67277e4b0cca89697145a/t/58c68dabe4fcb5898b355b39/1490184535228/Giant+illustration+by+Chris+Chatterton")
creature11 = Creature.create!(name:'Phoenix', super_power:'I can teach you to live forever', price:'300',user_id: user2.id, remote_photo_url: "https://i.pinimg.com/564x/8e/04/44/8e044482b27278dc02769c0b09b0218e.jpg")
creature12 = Creature.create!(name:'Sphinx', super_power:'I can solve every riddle', price:'220',user_id: user1.id, remote_photo_url: "https://i.pinimg.com/originals/b5/5d/26/b55d261698a9864762711ae98baca5a9.jpg")
creature13 = Creature.create!(name:'Emo Alien', super_power:'I can make anyone sad', price:'120',user_id: user2.id, remote_photo_url: "https://i.pinimg.com/564x/28/31/e6/2831e6f244e40f3e1eccaba5b1c26ad4.jpg?b=t")
creature14 = Creature.create!(name:'Feminist Unicorn', super_power:'WE CAN DO IT!', price:'80',user_id: user1.id, remote_photo_url: "https://i.pinimg.com/564x/99/19/e9/9919e9f5239d2c2c3992ffb56872a6e9.jpg?b=t")
creature15 = Creature.create!(name:'Centaur', super_power:'I can run really fast', price:'130',user_id: user3.id, remote_photo_url: "https://vignette.wikia.nocookie.net/itsmth/images/8/89/Centaur...jpg/revision/latest?cb=20150318041837")
creature16 = Creature.create!(name:'Leprechaun', super_power:'I will grant you three whishes', price:'110',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/62/ee/23/62ee23e06d9c2fa019d52b6dfef9a410.jpg?b=t")
creature17 = Creature.create!(name:'Troll', super_power:'I can play tricks on your neighbors', price:'19',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/564x/e2/90/b1/e290b177428d1b259254f47e98082546.jpg")
creature18 = Creature.create!(name:'Yeti', super_power:'I am super strong', price:'300',user_id: user3.id, remote_photo_url: "https://i.pinimg.com/originals/ce/f0/33/cef0337f8b8f6abad337af0ce6daf8bb.gif")


# puts 'Nice bookings '
# booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user1.id, creature_id: creature1.id)
# booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user2.id, creature_id: creature2.id)
# booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature3.id)
# booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user4.id, creature_id: creature4.id)
# booking1 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user5.id, creature_id: creature5.id)
# booking1 = Booking.create!(start_time: DateTime.new(2010,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user1.id, creature_id: creature2.id)
# booking1 = Booking.create!(start_time: DateTime.new(2010,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature6.id)
# booking1 = Booking.create!(start_time: DateTime.new(2010,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature9.id)


# puts 'Amy Winehouse loves all kinds of creatures!'
# booking6 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature1.id)
# booking7 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature2.id)
# booking8 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature3.id)
# booking9 = Booking.create!(start_time: DateTime.new(2018,2,3.5), end_time: DateTime.new(2018,3,4), user_id: user3.id, creature_id: creature4.id)



# puts 'Fucking good reviews'

# puts 'Yeah'
# review1 = Review.create!(description: 'That unicorn really wanna make me kill myself', rating: 1)
# booking6.update(review_id: review1.id)
# review2 = Review.create!(description: 'This flying camel is killing it!', rating: 5)
# booking7.update(review_id: review2.id)
# review3 = Review.create!(description: 'This dragon has anger issues', rating: 2)
# booking8.update(review_id: review3.id)
# review4 = Review.create!(description: 'Cutie', rating: 5)
# booking9.update(review_id: review4.id)

# puts 'the end!'
