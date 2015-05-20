# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.delete_all
Enrollment.delete_all
User.delete_all

User.create!(
  first_name: "David",
  last_name: "Banner",
  email: "Bannerd@bitmakerlabs.com",
  password: 'password',
  password_confirmation: 'password',
  role: "admin"
)

50.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
    role: "student"
  )
  print '|'
end

3.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
    role: "instructor"
  )
  print '|'
end

puts
puts "Users seeded."

name  = "Web Development Immersive"
price = "9000"
description = "Everything you need to know to be become a professional web developer and launch your own start-up"
x = ["|","/","-","+","#"]

5.times do
    Course.create!(
      name: name,
      price: price,
      description: description
  	)
    print x.shuffle.sample
end
puts "Course Seed Complete"

courses = Course.all
students = User.where(role: "student")

60.times do
    Enrollment.create!(
      course_id: courses.sample.id,
      user_id: students.sample.id
    )
    x = ["|","/","-","+","#"]
    print x.shuffle.sample
end
puts "Succesfully Registered For Courses ... Time To Get Rich Bitch!"


