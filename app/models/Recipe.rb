class Recipe

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.max do |a, b|
      a.users.length <=> b.users.length
    end
  end

  def recipecards
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end


  def users
    recipecards.map do |recipecard|
      recipecard.user
    end.uniq
  end

  def recipeingredients
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end
  end

  def ingredients
    self.recipeingredients.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

  def allergens
    self.ingredients.select do |ingredient|
      !ingredient.allergens.empty?
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end


end
