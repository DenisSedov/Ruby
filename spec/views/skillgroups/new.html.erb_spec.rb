require 'spec_helper'

describe "skillgroups/new.html.erb" do
  before(:each) do
    assign(:skillgroup, stub_model(Skillgroup,
      :seniorid => 1,
      :skill => 1
    ).as_new_record)
  end

  it "renders new skillgroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skillgroups_path, :method => "post" do
      assert_select "input#skillgroup_seniorid", :name => "skillgroup[seniorid]"
      assert_select "input#skillgroup_skill", :name => "skillgroup[skill]"
    end
  end
end
