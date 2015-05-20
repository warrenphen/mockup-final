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
puts "Course Seed Complete"

20.times do |n|
    course = rand(1...5)
    user = 1
    Register.create!(course_id: course,
      user_id: user
      )
    x = ["|","/","-","+","#"]
    print x.shuffle.sample
end
puts "Succesfully Registered For Courses ... Time To Get Rich Bitch!"


