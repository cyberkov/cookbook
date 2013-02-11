class Lunchplan < ActiveRecord::Base
  belongs_to :recipe
  attr_accessible :day, :notes, :recipe_id

  validates :day, :recipe_id, :presence => true
end
