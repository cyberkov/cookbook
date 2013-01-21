class Lunchplan < ActiveRecord::Base
  has_one :recipe
  attr_accessible :day, :notes, :recipe_id
end
