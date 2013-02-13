class Tag < ActiveRecord::Base
  has_and_belongs_to_many :recipes, :dependent => :restrict
  attr_accessible :name

  validates :name, :uniqueness => true
  validates :name, :presence => true
end
