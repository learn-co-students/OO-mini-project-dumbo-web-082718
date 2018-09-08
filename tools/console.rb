require_relative '../config/environment.rb'

#-----User Examples------
gavin  = User.new("Gavin")
mckenzie = User.new("McKenzie")
joe = User.new("Joe")

#-----Recipe Examples------
pizza_dough = Recipe.new("pizza dough")
tacos = Recipe.new("tacos")
pasta = Recipe.new("pasta")

#-----Ingredient Examples------
lettuce = Ingredient.new("lettuce")
yeast = Ingredient.new("yeast")
flour = Ingredient.new("flour")
rice = Ingredient.new("rice")
black_beans = Ingredient.new("black beans")
peanuts = Ingredient.new("peanuts")

#-----Recipe_incredient Examples------
one_cup_flour = RecipeIngredient.new(flour, pizza_dough)
one_cup_black_beans = RecipeIngredient.new(black_beans, tacos)
two_teaspoon_yeast = RecipeIngredient.new(yeast, pizza_dough)

#-----Allergen Examples------
gluten_allergy = Allergen.new(flour, gavin)
peanut_allergy = Allergen.new(peanuts, joe)
yeast_allergy = Allergen.new(yeast, mckenzie)

#-----Recipe_Card Examples------
RecipeCard.new("10/5/17", 8, gavin, pizza_dough)
RecipeCard.new("6/10/13", 10, joe, tacos)
RecipeCard.new("5/4/16", 7, mckenzie, pasta)
RecipeCard.new("3/6/15", 10, mckenzie, pizza_dough)

binding.pry
0
