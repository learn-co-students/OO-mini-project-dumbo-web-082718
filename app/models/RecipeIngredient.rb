class RecipeIngredient

  @@all = []

  attr_accessor :rec_ingredient_name, :recipe, :ingredient

  def initialize(rec_ingredient_name, recipe, ingredient)
    @rec_ingredient_name = rec_ingredient_name
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
