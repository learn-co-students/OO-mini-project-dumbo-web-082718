class User

  @@all = []

  attr_accessor :recipe_card, :recipe, :name #so we can read/write recipe_card and recipe

  def initialize(name, allergen = nil)
    @name = name
    @allergen = allergen
    @@all << self
  end

  def self.all
    @@all
  end


  def add_recipe_card(recipe, date, rating)
    new_recipe_card = RecipeCard.new(recipe, self, date, rating) #check this
    #should accept recipe instance as an arguement as well as date, rating and
    #create a new RC for this user and the given recipe
  end

  def recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end.collect do |recipe_card|
      recipe_card.recipe #first want to find all the recipe cards taht belong to this user
    end
    #should return all recipes this user has a recipe card for
  end

  def declare_allergen(ingredient)
    # allergen = []
    allergic_to = Allergen.new(self, ingredient)
    # allergen << allergic_to
    #should accepted an ingredient as argument
    #create new allergen instance for this user and ingredient
  end

  def allergen #reader method
    @allergen
    #should return all ingredient user is allergic too
  end

    def top_three_recipes
      RecipeCard.all.select do |recipe_card|
        recipe_card.user == self
      end.sort_by do |recipe_card|
        recipe_card.rating
      end.collect do |recipe_card|
        recipe_card.recipe
      end.last(3)
      # we have an array of instances of recipecards, we can sort by recipe.rating
    end

    def most_recent_recipe
      self.recipes.last
    end

end
