require 'spec_helper'

describe "workers/index.html.erb" do
  before(:each) do
    assign(:workers, [
      stub_model(Worker,
        :name => "Name",
        :fname => "Fname",
        :oname => "Oname",
        :contactinfo => 1,
        :status => 1,
        :desiralesalary => 1.5,
        :skill => 1
      ),
      stub_model(Worker,
        :name => "Name",
        :fname => "Fname",
        :oname => "Oname",
        :contactinfo => 1,
        :status => 1,
        :desiralesalary => 1.5,
        :skill => 1
      )
    ])
  end

  it "renders a list of workers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Oname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
