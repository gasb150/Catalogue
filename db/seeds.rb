# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!(
  name: 'Food',
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
  name: "Rice",
  description: "",
  category_id: 1,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Bread",
  description: "",
  category_id: 1,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Sugar",
  description: "",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Cofee",
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
  name: "Fish",
  description: "",
  category_id: 1,
  iva:0,
  price:2200,
)


Product.create!(
  name: "Bananas",
  description: "",
  category_id: 1,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Aspirine",
  description: "",
  category_id: 2,
  iva:0,
  price:1000,
)

Product.create!(
  name: "acetaminophen",
  description: "",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Amoxicilin",
  description: "",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Loratadine",
  description: "",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Ibuprofen",
  description: "",
  category_id: 2,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Television",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Smartphone",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Printer",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Headset",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Laptop",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Tablet",
  description: "",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Rubber Gloves",
  description: "",
  category_id: 4,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Mops",
  description: "",
  category_id: 4,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Soap",
  description: "",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Paper towels",
  description: "",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Detergent",
  description: "",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Duc Tape",
  description: "",
  category_id: 5,
  iva:0,
  price:2200,
)



Product.create!(
  name: "Pencil",
  description: "",
  category_id: 5,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Stapler",
  description: "",
  category_id: 5,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Agenda",
  description: "",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Post-It",
  description: "",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Cutter",
  description: "",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Dossier",
  description: "",
  category_id: 5,
  iva:0,
  price:2200,
)