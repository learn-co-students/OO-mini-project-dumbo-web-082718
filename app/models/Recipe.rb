
class Recipe

  @@all = []

  attr_accessor :recipe_name, :recipe_card, :ingredient

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipe_count = RecipeCard.all.collect do |card|
      card.recipe.recipe_cards
    end
    most_popular = recipe_counts.sort_by {|recipe|
    recipe.length}
    most_popular.uniq.reverse[0][0]
    #should return the recipe instance with the highest number of users
    #(the recipe that has the most recipe cards)
  end

  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end.collect do |recipe_card|
      recipe_card.user
    end
  end

  def ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end.collect do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
    #should return all of the ingredients in this recipe
  end

  def allergens
    self.ingredients.select do |ingredient|
      !ingredient.allergens.empty?
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(ingredient,self)
    end
 #should take an array of ingredient instances as an argument,
    #associate each of those ingredients with this recipe
  end

end
