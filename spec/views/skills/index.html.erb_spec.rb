require 'spec_helper'

describe "skills/index.html.erb" do
  before(:each) do
    assign(:skills, [
      stub_model(Skill,
        :fullname => "Fullname"
      ),
      stub_model(Skill,
        :fullname => "Fullname"
      )
    ])
  end

  it "renders a list of skills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
  end
end
