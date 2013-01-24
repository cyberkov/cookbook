require 'spec_helper'

describe "lunchplans/index" do
  before(:each) do
    assign(:lunchplans, [
      stub_model(Lunchplan,
        :recipe_id => 1,
        :notes => "MyText",
		:created_at => 1.days.ago
      ),
      stub_model(Lunchplan,
        :recipe_id => 1,
        :notes => "MyText",
		:created_at => 1.days.ago
      )
    ])
  end

  it "renders a list of lunchplans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
