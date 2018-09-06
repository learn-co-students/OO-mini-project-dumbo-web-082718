class User

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipecards
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes
    recipecards.map do |recipecard|
      recipecard.recipe
    end.uniq
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.map do |allergen|
      allergen.ingredient
    end
  end

  def most_recent_recipe
    self.recipes.last
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def top_three_recipes
    self.recipecards.sort! do |a, b|
      b.rating <=> a.rating
    end.take(3).map do |recipecard|
      recipecard.recipe
    end
  end

  def safe_recipes
    Recipe.all.select do |recipe|
      (recipe.ingredients & self.allergens).empty?
    end
  end


end
