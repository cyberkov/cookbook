class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :tags
  belongs_to :lunchplans
  attr_accessible :description, :name, :persons, :preparation_time
end
