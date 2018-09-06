
class RecipeIngredient

  @@all = []
  attr_accessor :name, :ingredient, :recipe

  def initialize(ingredient, recipe)
    @name = ingredient.name
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
