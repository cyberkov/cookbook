require 'spec_helper'

describe "ingredients/new" do
  before(:each) do
    assign(:ingredient, stub_model(Ingredient,
      :amount => 1.5,
      :unit_id => 1,
      :food_id => 1,
      :recipe_id => 1
    ).as_new_record)
  end

  it "renders new ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path, :method => "post" do
      assert_select "input#ingredient_amount", :name => "ingredient[amount]"
      assert_select "select#ingredient_unit_id", :name => "ingredient[unit_id]"
      assert_select "select#ingredient_food_id", :name => "ingredient[food_id]"
      assert_select "select#ingredient_recipe_id", :name => "ingredient[recipe_id]"
    end
  end
end
