# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contacts = Contact.create([{salutation: 1}, {first_name: 'Firstname'}, {middle_name: 'Middle'}, {last_name: 'Lastname'}, {ssn: '123-45-4321'}, {dob: 1999-12-01}, {comment: 'first database seed test'}])