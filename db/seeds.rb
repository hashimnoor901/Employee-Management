# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
employee = Employee.create(
  first_name: 'Muhammad',
  middle_name: 'Hashim',
  last_name: 'Noor',
  personal_email: 'hashimn901@gmail.com',
  city: 'Isb',
  country: 'Pakistan',
  state: 'Islamabad',
  pincode: '44000',
  adress_line_1:'Bhara Kahu islamabad'
)
employee = Employee.new(
  first_name: 'Muhammad',
middle_name: 'Farhad',
last_name: 'Noor',
personal_email: 'farhad901@gmail.com',
city: 'Isb',
country: 'Pakistan',
state: 'Islamabad',
pincode: '44000',
adress_line_1:'Bhara Kahu islamabad'
)
employee.save()