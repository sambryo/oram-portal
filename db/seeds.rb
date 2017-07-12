# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Admin.new
admin.first_name = "oram"
admin.last_name = "admin"
admin.email = "admin321@gmail.com"
admin.password = "password"
admin.save

user = User.new
user.first_name = "oram" 
user.last_name = "user"
user.email = "oram321@gmail.com"
user.password = "password"
user.save