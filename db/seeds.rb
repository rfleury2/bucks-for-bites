# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Merchant.find_or_create_by(
  name: "Target",
  logo_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/Target_logo.svg",
  meals_required: 5,
  cash_prize_cents: 500
)

Merchant.find_or_create_by(
  name: "GameStop",
  logo_url: "http://vectorlogofree.com/wp-content/uploads/2012/12/gamestop-logo-vector.png",
  meals_required: 20,
  cash_prize_cents: 1000
)

Merchant.find_or_create_by(
  name: "Amazon",
  logo_url: "https://s3.amazonaws.com/BURC_Pages/downloads/a-smile_color.png",
  meals_required: 10,
  cash_prize_cents: 750
)

Merchant.find_or_create_by(
  name: "Walgreens",
  logo_url: "http://henryfordinnovation.com/wp-content/uploads/2014/10/WalgreensFlagLogo.png",
  meals_required: 10,
  cash_prize_cents: 500
)



