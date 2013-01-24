require 'spec_helper'

describe "lunchplans/new" do
  before(:each) do
    assign(:lunchplan, stub_model(Lunchplan,
      :recipe_id => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new lunchplan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lunchplans_path, :method => "post" do
      assert_select "select#lunchplan_recipe_id", :name => "lunchplan[recipe_id]"
      assert_select "textarea#lunchplan_notes", :name => "lunchplan[notes]"
    end
  end
end
