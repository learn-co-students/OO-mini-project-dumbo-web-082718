require_relative '../config/environment.rb'


egg = Ingredient.new("egg")
tomato = Ingredient.new("tomato")
peppers = Ingredient.new("peppers")
bread= Ingredient.new("bread")
ham = Ingredient.new("ham")
cheese = Ingredient.new("cheese")
sauce = Ingredient.new("sauce")

malcome = User.new("Malcome")
ruby= User.new("Ruby")


soup = Recipe.new("soup")
omlette = Recipe.new("omlette")
ham_sandwich = Recipe.new("ham sandwich")
pizza = Recipe.new("pizza")

cheese_pizza_ingredient = RecipeIngredient.new(cheese,pizza)
sauce_pizza_ingredient = RecipeIngredient.new(sauce,pizza)


malcome_omlette = RecipeCard.new(omlette,"9/10",5,malcome)
omlette_ingredient= RecipeIngredient.new(egg,omlette)
malcome.declare_allergen(egg)
malcome.declare_allergen(ham)
ham_sandwich_ingredient=RecipeIngredient.new(ham,ham_sandwich)
bread_sandwich_ingredient=RecipeIngredient.new(bread,ham_sandwich)

ruby_sandwich = RecipeCard.new(ham_sandwich, "10/12", 4, ruby)
bread_ingredient = RecipeIngredient.new(bread,ham_sandwich)
malcome_sandwich= RecipeCard.new(ham_sandwich, "11/2",3, malcome)

malcome_soup = RecipeCard.new(soup, "11/8",5, malcome)
ruby_soup = RecipeCard.new(soup, "10/13",2, ruby)

malcome_pizza = RecipeCard.new(pizza, "2/2", 4, malcome)


binding.pry
0
