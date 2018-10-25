# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#10.times do 
 # cityname = City.create!(name: Faker::Nation.capital_city, postal_code: Faker::Number.number(5))
  #user = User.create!(first_name: Faker::Name.name, last_name: Faker::Hipster.words, description: Faker::Job.title, city_id: Faker::Number.between(City.first.id, City.last.id))
#end

20.times do 
  gossip = Gossip.create!(title: Faker::SiliconValley.quote, content: Faker::FamilyGuy.quote, date: Faker::Time.between(DateTime.now - 1, DateTime.now), user_id: Faker::Number.between(1,20))
  comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1,20), gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id))
end

10.times do 
  x = Tag.create!(title: Faker::Lorem.sentence, gossip_id: Gossip.all.ids.sample) 
end
