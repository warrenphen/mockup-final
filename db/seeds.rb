# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


30.times do |n|
    name  = Faker::Commerce.department
    price = Faker::Commerce.price
    description = Faker::Company.catch_phrase
    slug = Faker::Internet.slug
    Course.create!(name: name,
  	      price: price,
  	      description: description
  	     )
    x = ["|","/","-","+","#"]
    print x.shuffle.sample
  end
