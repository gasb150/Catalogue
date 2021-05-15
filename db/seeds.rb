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
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Bread",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Sugar",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Cofee",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Chocolate",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Fish",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:0,
  price:2200,
)


Product.create!(
  name: "Bananas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 1,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Aspirine",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 2,
  iva:0,
  price:1000,
)

Product.create!(
  name: "acetaminophen",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Amoxicilin",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Loratadine",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 2,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Ibuprofen",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 2,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Television",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Smartphone",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Printer",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Headset",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Laptop",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Tablet",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 3,
  iva:0,
  price:2200,
)

Product.create!(
  name: "Rubber Gloves",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 4,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Mops",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 4,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Soap",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Paper towels",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Detergent",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 4,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Duc Tape",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:0,
  price:2200,
)



Product.create!(
  name: "Pencil",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:0,
  price:1800,
)

Product.create!(
  name: "Stapler",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:0,
  price:1000,
)

Product.create!(
  name: "Agenda",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Post-It",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Cutter",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:5,
  price:2200,
)

Product.create!(
  name: "Dossier",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Phasellus nec iaculis mauris.",
  category_id: 5,
  iva:0,
  price:2200,
)