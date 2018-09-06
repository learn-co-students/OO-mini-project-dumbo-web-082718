class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    self.all.max do |a,b|
      a.allergens.count<=>b.allergens.count
    end
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

end
