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

# User.create(first_name: ,last_name: ,username: ,password_digest: ,email: ,foh: ,boh: ,admin: )
# Timesheet.create(user_id: ,clock_in: ,clock_out: )
# Table.create(user_id: ,table_number: )
# Customer.create(table_id: ,seat_number: )
# Order.create(customer_id: ,recipe_id: )

Recipe.create(name: "Cheeseburger",description: "Hambuger with cheese",instruction: "Put cheese on a burger", price: 12.00)
Ingredient.create(name: "Ground Beef", price: )
Ingredient.create(name: "Hamburger Bun", price: )
Ingredient.create(name: "Cheddar Cheese", price: )
Ingredient.create(name: "Pickle", price: )
Ingredient.create(name: "Lettuce", price: )


Proportion.create(recipe_id: 3, ingredient_id: 6, amount: "8 oz")
Proportion.create(recipe_id: 3, ingredient_id: 7, amount: "1 Bun")
Proportion.create(recipe_id: 3, ingredient_id: 8, amount: "1 oz")
Proportion.create(recipe_id: 3, ingredient_id: 9, amount: ".25 oz")
Proportion.create(recipe_id: 3, ingredient_id: 10, amount: ".25 oz")
Proportion.create(recipe_id: 3, ingredient_id: 3, amount: ".5 oz")

Recipe.create(name: "House Salad",description: "Lettuce, Tomato, Ranch Dressing",instruction: "Mix lettuce and tomato with ranch dressing", price: 9.00)

Ingredient.create(name: "Ranch Dressing", price: )
Proportion.create(recipe_id: 4, ingredient_id: 10, amount: "8 oz")
Proportion.create(recipe_id: 4, ingredient_id: 3, amount: "2 oz")
Proportion.create(recipe_id: 4, ingredient_id: 11, amount: "1 oz")

Recipe.create(name: "Vanilla Ice Cream",description: "Scoop of vaniulla ice cream",instruction: "Scoop ice cream into a bowl", price: 5.00)

Ingredient.create(name: "Vanilla Ice Cream", price: )
Proportion.create(recipe_id: 5, ingredient_id: 12, amount: "4 oz")

#
# User.create(first_name: "Joey",last_name: "Johnson",username: "jj",password_digest: ,email: "jj@fakeemail.com",foh: true,boh: true,admin: 0)
# User.create(first_name: "Lisa",last_name: "Namely",username: "ln",password_digest: ,email: "ln@fakeemail.com",foh: true,boh: false,admin: 0)
#
# Timesheet.create(user_id: 1,clock_in: "2018-07-18 09:00:00",clock_out: )
# Timesheet.create(user_id: 2,clock_in: "2018-07-18 10:00:00",clock_out: )
#
# Table.create(user_id: 1,table_number: 1)
# Table.create(user_id: 1,table_number: 2)
# Table.create(user_id: 2,table_number: 3)
# Table.create(user_id: 2,table_number: 4)
#
# Customer.create(table_id: 1,seat_number: 1)
# Customer.create(table_id: 1,seat_number: 2)
# Customer.create(table_id: 1,seat_number: 3)
# Customer.create(table_id: 1,seat_number: 4)
# Customer.create(table_id: 2,seat_number: 1)
# Customer.create(table_id: 3,seat_number: 1)
# Customer.create(table_id: 3,seat_number: 2)
# Customer.create(table_id: 4,seat_number: 1)
# Customer.create(table_id: 4,seat_number: 2)
#
# Order.create(customer_id: ,recipe_id: )
