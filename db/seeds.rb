# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create(name: "Pizza", price: 5.00)


Ingredient.create(name: "Flour", vegan: true, vegetarian: true, gluten_free: false)

Ingredient.create(name: "Sauce", vegan: true, vegetarian: true, gluten_free: true)
Ingredient.create(name: "Pepperoni", vegan: false, vegetarian: false, gluten_free: true)
Ingredient.create(name: "Sausage", vegan: false, vegetarian: false, gluten_free: true)
Ingredient.create(name: "Onion", vegan: true, vegetarian: true, gluten_free: true)
Ingredient.create(name: "Green Pepper", vegan: true, vegetarian: true, gluten_free: true)




