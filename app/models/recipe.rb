class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :tags
  has_many :lunchplans
  attr_accessible :description, :name, :persons, :preparation_time, :tags, :ingredients, :ingredients_attributes
  accepts_nested_attributes_for :ingredients

  validate :name, :uniqueness => true
end
