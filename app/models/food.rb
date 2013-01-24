class Food < ActiveRecord::Base
  has_many :ingredients
  has_many :recipes, :through => :ingredients
  attr_accessible :name
end
