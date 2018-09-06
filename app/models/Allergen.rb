class Allergen

 @@all = []

 attr_accessor :user, :ingredient #these are instance variables

 def initialize(ingredient)
   @ingredient = ingredient
   @@all << self
 end

 def self.all
     @@all
 end
end
