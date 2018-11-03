# require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/User.rb'
require_relative '../app/models/Recipe.rb'
require_relative '../app/models/RecipeCard.rb'
require_relative '../app/models/RecipeIngredient.rb'
require_relative '../app/models/Ingredient.rb'
require_relative '../app/models/Allergen.rb'


matt=User.new("Matt")
gabby=User.new("Gabby")
mike=User.new("Mike")
ruth=User.new("Ruth")

r1=Recipe.new("Meatloaf")
r2=Recipe.new("Meatballs")
r3=Recipe.new("Mac n Cheese")

matt.add_recipe_card(r1)
matt.add_recipe_card(r2)
gabby.add_recipe_card(r1)
mike.add_recipe_card(r1)
ruth.add_recipe_card(r3)

meat=Ingredient.new("Meat")
cipollini=Ingredient.new("Cipollini")
hot_peppers=Ingredient.new("Hot Peppers")

meatloaf=[meat,cipollini,hot_peppers]

r1.add_ingredients(meatloaf)


binding.pry
