class Allergen
#Join b/w a user and an ingredient.
  @@all = []

  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
