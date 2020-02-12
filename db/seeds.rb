# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  1234567890,
    category:      'Indian'
  },
  {
    name:         'Pizza',
    address:      '8 Boundary St, Roma E2 7JE',
    phone_number:  1648487890,
    category:      'Italian'
  },
  {
    name:         'Sushi',
    address:      '9 Boundary St, Tokyo E2 7JE',
    phone_number:  46465468488,
    category:      'Japanese'
  },
  {
    name:         'Hamburger',
    address:      '10 Boundary St, Chicago E2 7JE',
    phone_number:  5666787887,
    category:      'American'
  },
   {
    name:         'Bo-Bun',
    address:      '12 Boundary St, Bangkok E2 7JE',
    phone_number:  2397989898,
    category:      'Thai'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

# t.string "name"
#     t.text "address"
#     t.integer "phone_number"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "category"
