class Unit < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients, :dependent => :restrict
  validates :name, :uniqueness => true
  validates :name, :presence => true
end
