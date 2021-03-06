require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :description => "MyText",
      :persons => 1,
      :preparation_time => 1
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "textarea#recipe_description", :name => "recipe[description]"
      assert_select "input#recipe_persons", :name => "recipe[persons]"
      assert_select "input#recipe_preparation_time", :name => "recipe[preparation_time]"
    end
  end
end
