require 'spec_helper'

describe "skillgroups/index.html.erb" do
  before(:each) do
    assign(:skillgroups, [
      stub_model(Skillgroup,
        :seniorid => 1,
        :skill => 1
      ),
      stub_model(Skillgroup,
        :seniorid => 1,
        :skill => 1
      )
    ])
  end

  it "renders a list of skillgroups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
