class Food < ActiveRecord::Base
  has_many :ingredients, :dependent => :restrict
  has_many :recipes, :through => :ingredients
  attr_accessible :name

  validates :name, :uniqueness => true
  validates :name, :presence => true
end
