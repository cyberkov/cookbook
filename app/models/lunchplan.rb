class Lunchplan < ActiveRecord::Base
  belongs_to :recipes
  attr_accessible :day, :notes, :recipe_id
end
