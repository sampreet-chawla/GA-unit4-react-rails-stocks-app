# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stock.create([
  { symbol: "NVDA", name: 'NVIDIA CORP.' },
  { symbol: "ADBE", name: 'ADOBE SYSTEMS INC.' }
])

AveragePrice.create([
  { price: 2.00, price_date: "11-11-2020", change_in_price: -106, stock_id: 1 },
  { price: 5.00, price_date: "11-12-2020", change_in_price: +706, stock_id: 1 },
  { price: 8.00, price_date: "11-12-2020", change_in_price: +35, stock_id: 2 },
])