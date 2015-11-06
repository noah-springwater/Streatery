# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eddie = Vendor.new({
  name: "Eddie's Pizza Truck",
  username: "Eddie123",
  password: "eddie",
  password_confirmation: "eddie",
  img_url: "http://roaminghunger.com/img/trucks/original/4e913a08-4958-4775-85f0-648546204482.jpg",
  description: "Come enjoy Eddie's Pizza. The best mobile Pizza join in town",
  food_type: "Pizza/Italian",
  cards: "Yes",
  menu: "Cheese, Veggie",
  is_vendor: "Yes"
})
eddie.save
