
class RecipeCard

  @@all = []

  attr_accessor :user, :recipeingredient, :recipe
  attr_reader :date, :rating

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
