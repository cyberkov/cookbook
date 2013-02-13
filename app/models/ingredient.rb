class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :food_id, :recipe_id, :unit_id, :unit, :food, :food_name
  belongs_to :recipe
  belongs_to :food
  belongs_to :unit

  # A recipe cannot have more than one ingredient per food
  validates :food_id, :uniqueness => { :scope => :recipe_id }
  validates :amount, :presence => true

  def food_name
		  food.try(:name)
  end

  def food_name=(name)
		  self.food = Food.find_or_create_by_name(name) if name.present?
  end
end
