# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cocktails = Category.create(name: "Cocktails")
starters = Category.create(name: "Starters")
dinner = Category.create(name: "Dinner")

Recipe.create(title: "Ramen Chicken Noodle Soup", category: dinner, serves: "serves 4", description: "Hearty soup that warms you to the soul on a cold winter's night.", cook_time: "40 minutes")
Recipe.create(title: "Penne Alla Vodka", category: dinner, serves: "serves 4", description: "Rich tomato sauce with a touch of cream and vodka, sprinkled with a touch of freshly grated parmesan.", cook_time: "3 hours")
Recipe.create(title: "Lemon Chicken Breasts", category: dinner, serves: "serves 4", description: "Delicious lemon and thyme round out this grilled chicken breast.", cook_time: "1 hour & 20 minutes")
