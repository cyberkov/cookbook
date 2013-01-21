class IngredientsRecipe < ActiveRecord::Base
  has_one :unit
  attr_accessible :amount, :ingredient_id, :recipe_id, :unit_id
end
