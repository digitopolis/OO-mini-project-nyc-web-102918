class RecipeIngredient
  attr_accessor:ingredients,:recipe

  @@all=[]

  def initialize
    @@all << self
    @ingredients=[]
  end

  def self.all
    @@all
  end


end #end RecipeIngredient class
