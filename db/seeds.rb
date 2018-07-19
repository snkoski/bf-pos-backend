# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Recipe.create(name: ,description: ,instruction: , price:)
# Ingredient.create(name: , price: )
# Proportion.create(recipe_id: , ingredient_id: , amount: )

Recipe.create(name: "Pizza Sauce",description: "Tomato, Olive Oil, Salt",instructions: "Blend tomatoes with olive oil and salt", price: 0.33)

Ingredient.create(name: "Olive Oil", price: 1.00)
Ingredient.create(name: "Salt", price: 0.05)

Proportion.create(recipe_id: 2, ingredient_id: 3, amount: "10 lbs")
Proportion.create(recipe_id: 2, ingredient_id: 4, amount: "2 cups")
Proportion.create(recipe_id: 2, ingredient_id: 5, amount: "1/4 cup")
