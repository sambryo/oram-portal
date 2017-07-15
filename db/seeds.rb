# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
central = Admin.create
central.first_name = "central"
central.last_name = "admin"
central.email = "central@admin.com"
central.password = "password"
central.role = 0
central.save

employee = Admin.create
employee.first_name = "employee"
employee.last_name = "admin"
employee.email = "employee@admin.com"
employee.password = "password"
employee.role = 1
employee.save

referrer = User.create()
referrer.first_name = "referrer" 
referrer.last_name = "user"
referrer.email = "referrer@user.com"
referrer.password = "password"
referrer.role = 0
referrer.save

client = User.create()
client.first_name = "client" 
client.last_name = "user"
client.email = "client@user.com"
client.password = "password"
client.role = 1
client.save