require 'spec_helper'

describe "skillgroups/edit.html.erb" do
  before(:each) do
    @skillgroup = assign(:skillgroup, stub_model(Skillgroup,
      :seniorid => 1,
      :skill => 1
    ))
  end

  it "renders the edit skillgroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skillgroups_path(@skillgroup), :method => "post" do
      assert_select "input#skillgroup_seniorid", :name => "skillgroup[seniorid]"
      assert_select "input#skillgroup_skill", :name => "skillgroup[skill]"
    end
  end
end
