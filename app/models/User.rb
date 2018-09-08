class User
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_recipe_card
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    get_recipe_card.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(name, ingredient)
    Allergen.new(name, ingredient, self)
    #accepts an incredient instance as an argument
    #creates new allergen instance for this user and the given ingredient
  end

  def allergens
    #returns all ingredients user is allergic to
    Allergen.all.select{|allergen| allergen.user == self}
  end

  def top_three_recipes
    #returns top three highest rated recipes for this user
    self.recipe_cards.sort_by do |card|
      card.rating
    end.reverse[0..2]
  end

  def most_recent_recipe
    #returns recipe most recently added to user's cookbook
    self.recipe_cards[-1]
  end
end
