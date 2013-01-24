class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :food_id, :recipe_id, :unit_id
  belongs_to :recipe
  belongs_to :food
  belongs_to :unit
end
