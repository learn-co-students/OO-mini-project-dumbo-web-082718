class Recipe

  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.max do |a,b|
      a.users.count <=> b.users.count
    end
  end

  def users
      recipe_cards=RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    recipe_cards.map do |card|
      card.user
    end
  end

  def ingredients
  recipe_ingredients = RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
    recipe_ingredients.map do |each_ingredient|
      each_ingredient.ingredient
    end
  end

  def allergens
    self.ingredients.map do |ingredient|
      ingredient.allergens.select do |allergen|
        allergen.ingredient == ingredient
      end
    end.flatten
  end

  def add_ingredients(ingredients_array)
    ingredients_array.map do |ingredient|
      ingredient = RecipeIngredient.new(ingredient,self)
    end
  end

end
