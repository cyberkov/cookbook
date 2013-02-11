class Unit < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients
  validates :name, :uniqueness => true
  validates :name, :presence => true
end
