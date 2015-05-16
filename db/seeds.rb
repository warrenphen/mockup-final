# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |n|
    name  = "Web Development Immersive"
    price = "9000"
    description = "Everything you need to know to be become a professional web developer and launch your own start-up"
    Course.create!(name: name,
  	      price: price,
  	      description: description
  	     )
    x = ["|","/","-","+","#"]
    print x.shuffle.sample
end
