class User

  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def recipes
    users_recipe_cards=RecipeCard.all.select do |recipe_card|
      recipe_card.user ==self
    end
    users_recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe,date,rating)
    new_recipe_card= RecipeCard.new(recipe,date,rating,self)
  end

  def declare_allergen(ingredient)
    new_allergen= Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user ==self
    end
  end

  def top_three_recipes
    self.recipe_cards.sort_by do |card|
      card.rating
    end.reverse[0..2]
  end

  def most_recent_recipes
    self.recipe_cards[-1]
  end
end
