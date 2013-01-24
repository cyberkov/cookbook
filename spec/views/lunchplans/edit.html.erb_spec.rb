require 'spec_helper'

describe "lunchplans/edit" do
  before(:each) do
    @lunchplan = assign(:lunchplan, stub_model(Lunchplan,
      :recipe_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit lunchplan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lunchplans_path(@lunchplan), :method => "post" do
      assert_select "select#lunchplan_recipe_id", :name => "lunchplan[recipe_id]"
      assert_select "textarea#lunchplan_notes", :name => "lunchplan[notes]"
    end
  end
end
