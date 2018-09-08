class Recipe
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    #Returns recipe instance with highest num of users
    #(the recipe that has the most recipe cards)
    self.all.max_by {|recipe| recipe.users.count}

  end

  def get_recipe_card
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    get_recipe_card.map do |recipe_card|
      recipe_card.user
    end
  end

  def get_recipe_ingredient
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    #returns all ingredients in this recipe / recipe.ingredients -> all ingredients
    get_recipe_ingredient.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    #returns all ingredients in this recipe that are allergens
    self.ingredients.map do |ingredient|
      ingredient.allergens.select do |allergen|
       allergen.ingredient == ingredient
      end
    end
  end

  def add_ingredients(array)
    #takes in an array of ingredient INSTANCES as an argument
    #and associate each of those ingredients with this receipe
      array.map do |ingredient|
        ingredient = RecipeIngredient.new(ingredient,self)
      end
    end
end
