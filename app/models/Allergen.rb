class Allergen

  @@all = []
  attr_accessor :name, :ingredient, :user

  def initialize(ingredient, user)
    @name = ingredient.name
    @ingredient = ingredient
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

end
