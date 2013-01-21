class Unit < ActiveRecord::Base
  attr_accessible :name
  belongs_to :ingredients_recipes
end
