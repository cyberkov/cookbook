class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :food_id, :recipe_id, :unit_id
end
