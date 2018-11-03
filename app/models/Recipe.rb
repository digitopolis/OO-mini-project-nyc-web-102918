class Recipe
  attr_accessor:dish,:number_of_card,:user,:ingredients

  @@all=[]


  def initialize(dish)
    @dish=dish
    @number_of_card=0
    @user=[]
    @ingredients=[]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    most_popular = self.all.sort_by do |recipe|
    recipe.number_of_card
  end
    most_popular.last
  end


  def add_ingredients(list_of_ingredients)
      self.ingredients = list_of_ingredients
      new_recipe_ingredient = RecipeIngredient.new
      new_recipe_ingredient.recipe = self
      new_recipe_ingredient.ingredients << self.ingredients
  end

  def ingredients
    @ingredients
  end

  def allergens

  end

end
