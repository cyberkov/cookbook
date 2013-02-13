class Unit < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients, :dependent => :restrict
  validates :name, :uniqueness => true, :allow_blank => true, :presence => true
end
