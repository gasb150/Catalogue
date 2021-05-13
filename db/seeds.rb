# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!(
  name: 'Alimentos',
)

Category.create!(
  name: 'Health',
)

Category.create!(
  name: 'Electronics',
)

Category.create!(
  name: 'Cleaning',
)

Category.create!(
  name: 'Office',
)

Product.create!(
  name: "Arroz",
  description: "",
  category_id: 1,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Frijol",
  description: "",
  category_id: 1,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Azucar",
  description: "",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Cafe",
  description: "",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Chocolate",
  description: "",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Sal",
  description: "",
  category_id: 1,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Televisor",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Celular",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)