require 'spec_helper'

describe "skillgroups/show.html.erb" do
  before(:each) do
    @skillgroup = assign(:skillgroup, stub_model(Skillgroup,
      :seniorid => 1,
      :skill => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
