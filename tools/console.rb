require_relative '../config/environment.rb'
#users
jackie = User.new("Jackie", "peanuts")
steven = User.new("Steven", "peanuts")
gavin = User.new("Gavin","peanuts")
mckenzie = User.new("Mckenzie", "pasta")

#allergens
pasta = Allergen.new("pasta")
peanuts = Allergen.new("peanuts")

#recipes
banana_pudding = Recipe.new("banana pudding")
pasta = Recipe.new("pasta")
sandwich = Recipe.new("sandwich")
cereal = Recipe.new("cereal")


#recipe_cards
banana_pudding_card = RecipeCard.new(steven, banana_pudding, "September, 6th", 5)
pasta_card = RecipeCard.new(steven, pasta, "September, 6th", 2)
sandwich_card = RecipeCard.new(steven, sandwich, "September, 6th", 1)
cereal_card = RecipeCard.new(jackie, cereal, "September, 8th", 7)


#ingredients
banana = Ingredient.new("banana")
sauce = Ingredient.new("sauce")
bread = Ingredient.new("bread")
ham = Ingredient.new("ham")

#recipe ingredient
banana_one = RecipeIngredient.new("one banana", banana_pudding, banana)
sauce_one = RecipeIngredient.new("one can of sauce", pasta, sauce)
bread_slice = RecipeIngredient.new("two slices of bread", sandwich, bread)
slice_of_ham = RecipeIngredient.new("ham slice", sandwich, ham)



binding.pry
