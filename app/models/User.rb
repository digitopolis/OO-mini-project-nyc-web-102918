class User

  attr_accessor:name

  def initialize(name)
    @name=name
  end

  def recipes
    RecipeCard.all.select do |recipecard|
      recipecard.user==self
    end
  end
                    #
  def add_recipe_card(recipe)
    new_card=RecipeCard.new(self,recipe)
    new_card.recipe.number_of_card+=1
    new_card.recipe.user << self
  end


  def declare_allergens

  end

  def allergens

  end

  def top_three_recipes

  end

  def most_recent_recipe
    most_recent=RecipeCard.all.select do |recipe|
      recipe.user==self
    end
    x=most_recent.sort_by do |recipecard|
      recipecard.date
  end
  x.last
end


end
