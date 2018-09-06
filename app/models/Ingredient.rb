
class Ingredient

  @@all = []

  attr_accessor :ingredient_name

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    arr = User.all.collect do |instance|
      instance.allergen
    end
    freq = arr.inject(Hash.new(0)) do |allergen, occurence|
      allergen[occurence] += 1; allergen
    end
    arr.max_by {|occurence| freq[occurence]}
    #should return ingredient that the highest number of users are allergic to
  end
end
