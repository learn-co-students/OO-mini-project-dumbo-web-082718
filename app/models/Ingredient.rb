class Ingredient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    self.all.max do |a, b|
      a.allergens.length <=> b.allergens.length
    end
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

end
