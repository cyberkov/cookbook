class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  has_one :unit
  attr_accessible :name
end