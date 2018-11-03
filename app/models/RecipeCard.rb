class RecipeCard
attr_accessor:user,:recipe,:date,:rating

@@all=[]

def initialize(user, recipe)
  @date=Time.now
  @user=user
  @recipe=recipe
  @rating=0
  @@all << self
end

def self.all
  @@all
end


end #end RecipeCard class
