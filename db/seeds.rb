# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

@uni = Unit.create!(:name => "Prise")
@salz = Food.create!(:name => "Salz")
@ingred = Ingredient.create!(:amount => 1, :unit => @uni, :food => @salz)
@tag = Tag.create!(:name => "salty")
@recipe = Recipe.create!(:name => "Testrezept", :description => "Just add water", :persons => 4, :preparation_time => 20, :ingredients => @ingred, :tags => @tag )
Lunchplan.create!(:day => Time.now, :recipe => @recipe, :notes => "maybe not")
