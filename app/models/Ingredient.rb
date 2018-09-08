class Ingredient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select {|allergen| allergen.ingredient == self}
  end

  def self.most_common_allergen
    #return the ingredient instance that the highest number of users are allergic to
    self.all.max_by {|allergen| allergen.count}
  end
end
