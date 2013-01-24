# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient do
    amount 1.5
    unit_id 1
    food_id 1
    recipe_id 1
  end
end
