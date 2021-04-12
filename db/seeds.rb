# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ENV["API_KEY"]

# response = RestClient.get("https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=#{ENV["API_KEY"]}")
# near_earth_objects = JSON.parse(response)["near_earth_objects"]

# near_earth_objects.each do |neo|
#     binding.pry
# end

# Show.get_data

# 25.times do 
#     name = Faker::Name.name
#     username = Faker::Internet.username(specifier: 7..9)

#     user_hash = {name: name, username: username}

#     User.create(user_hash)
# end