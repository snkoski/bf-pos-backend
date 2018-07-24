# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Recipe.create(name: ,description: ,instructions: , price:)
# Ingredient.create(name: , price: )
# Proportion.create(recipe_id: , ingredient_id: , amount: )

# User.create(first_name: ,last_name: ,username: ,password_digest: ,email: ,foh: ,boh: ,admin: )
# Timesheet.create(user_id: ,clock_in: ,clock_out: )
# Table.create(user_id: ,table_number: )
# Customer.create(table_id: ,seat_number: )
# Order.create(customer_id: ,recipe_id: )
# Reservation.create(guest_name: ,number_of_guests: ,date: ,time: ,table_number: ,:special_requests)
# Waitlist.create(guest_name:, phone_number:, number_of_guests:, date:, start_waitlist:)

# Recipe.create(name: "Cheeseburger",description: "Hambuger with cheese",instructions: "Put cheese on a burger", price: 12.00)
# Ingredient.create(name: "Ground Beef")
# Ingredient.create(name: "Hamburger Bun")
# Ingredient.create(name: "Cheddar Cheese")
# Ingredient.create(name: "Pickle")
# Ingredient.create(name: "Lettuce")
#
#
# Proportion.create(recipe_id: 3, ingredient_id: 6, amount: "8 oz")
# Proportion.create(recipe_id: 3, ingredient_id: 7, amount: "1 Bun")
# Proportion.create(recipe_id: 3, ingredient_id: 8, amount: "1 oz")
# Proportion.create(recipe_id: 3, ingredient_id: 9, amount: ".25 oz")
# Proportion.create(recipe_id: 3, ingredient_id: 10, amount: ".25 oz")
# Proportion.create(recipe_id: 3, ingredient_id: 3, amount: ".5 oz")
#
# Recipe.create(name: "House Salad",description: "Lettuce, Tomato, Ranch Dressing",instructions: "Mix lettuce and tomato with ranch dressing", price: 9.00)
#
# Ingredient.create(name: "Ranch Dressing")
# Proportion.create(recipe_id: 4, ingredient_id: 10, amount: "8 oz")
# Proportion.create(recipe_id: 4, ingredient_id: 3, amount: "2 oz")
# Proportion.create(recipe_id: 4, ingredient_id: 11, amount: "1 oz")
#
# Recipe.create(name: "Vanilla Ice Cream",description: "Scoop of vaniulla ice cream",instructions: "Scoop ice cream into a bowl", price: 5.00)
#
# Ingredient.create(name: "Vanilla Ice Cream")
# Proportion.create(recipe_id: 5, ingredient_id: 12, amount: "4 oz")

#
# User.create(first_name: "Joey",last_name: "Johnson",username: "jj",email: "jj@fakeemail.com",foh: true,boh: true,admin: 0)
# User.create(first_name: "Lisa",last_name: "Namely",username: "ln",email: "ln@fakeemail.com",foh: true,boh: false,admin: 0)
#
# Timesheet.create(user_id: 1,clock_in: "2018-07-18 09:00:00")
# Timesheet.create(user_id: 2,clock_in: "2018-07-18 10:00:00")
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
# Order.create(customer_id: 1,recipe_id: 1)
# Order.create(customer_id: 2,recipe_id: 3)
# Order.create(customer_id: 3,recipe_id: 3)
# Order.create(customer_id: 4,recipe_id: 4)
# Order.create(customer_id: 5,recipe_id: 1)
# Order.create(customer_id: 6,recipe_id: 1)
# Order.create(customer_id: 7,recipe_id: 4)
# Order.create(customer_id: 8,recipe_id: 2)
# Order.create(customer_id: 9,recipe_id: 3)
# Order.create(customer_id: 1,recipe_id: 5)

# Reservation.create(guest_name: "Tom Johnson", number_of_guests: 2, date: "2018-07-22 23:00:00", time: "2018-07-22 23:00:00", table_number: 1, special_requests: "Please seat us at table 1")
# Reservation.create(guest_name: "Stan Smith", number_of_guests: 4, date: "2018-07-22 20:00:00", time: "2018-07-22 20:00:00")
# Reservation.create(guest_name: "Michael Jordan", number_of_guests: 4, date: "2018-07-22 20:30:00", time: "2018-07-22 20:30:00", table_number: 2, special_requests: "I'm Michael Jordan")
# Reservation.create(guest_name: "Hulk Hogan", number_of_guests: 3, date: "2018-07-23 19:00:00", time: "2018-07-23 19:00:00", special_requests: "Brother")

# Waitlist.create(guest_name: "Regular Joe", phone_number: "217-854-9632", number_of_guests: 2, date: "2018-07-23 19:00:00", start_waitlist: "2018-07-23 19:00:00")
# Waitlist.create(guest_name: "John Doe", phone_number: "217-420-6969", number_of_guests: 4, date: "2018-07-23 19:05:00", start_waitlist: "2018-07-23 19:05:00")
# Waitlist.create(guest_name: "John Smith", phone_number: "217-854-5698", number_of_guests: 4, date: "2018-07-23 19:07:00", start_waitlist: "2018-07-23 19:07:00")
# Waitlist.create(guest_name: "Guy Person", phone_number: "321-654-9874", number_of_guests: 3, date: "2018-07-23 19:15:00", start_waitlist: "2018-07-23 19:15:00")

StaticTable.create(occupied: false)
