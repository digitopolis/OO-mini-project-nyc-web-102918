class Ingredient
  attr_accessor:name

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def most_common_allergen
  end
  
end
