class Recipe < ActiveRecord::Base
  has_many :ingredients, :dependent => :destroy
  has_many :foods, :through => :ingredients
  has_many :tags
  has_many :lunchplans
  attr_accessible :description, :name, :persons, :preparation_time, :tags, :ingredients, :ingredients_attributes
  accepts_nested_attributes_for :ingredients, :allow_destroy => true

  validate :name, :uniqueness => true
  validates :name, :description, :persons, :ingredients, :preparation_time, :presence => true
end
