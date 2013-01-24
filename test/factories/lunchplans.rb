# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lunchplan do
    day "2013-01-24"
    recipe_id 1
    notes "MyText"
  end
end
