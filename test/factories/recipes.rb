# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    name "MyString"
    description "MyText"
    persons 1
    preparation_time 1
  end
end
