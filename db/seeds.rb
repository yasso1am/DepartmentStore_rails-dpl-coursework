# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |dept|
  dept = Department.create(
    name: Faker::Commerce.department(1, true),
  )

20.times do
  dept.items.create(
    name: Faker::Commerce.product_name,
    qty: Faker::Number.between(1, 20),
    category: Faker::Commerce.material,
    price: Faker::Number.between(2, 300),
  )
  end
end
