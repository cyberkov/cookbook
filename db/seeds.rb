# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

@uni = Unit.create(:name => "Prise")
@salz = Ingredient.create(:name => "Salz", :unit => @uni)
@tag = Tag.create(:name => "delicious")
@recipe = Recipe.create(:name => "Testrezept", :description => "Not much", :persons => 4, :preparation_time => 20, :ingredients => @salz, :tags => @tag )
Lunchplan.create(:day => Time.now, :recipe => @recipe, :notes => "maybe not")
