require 'spec_helper'

describe "vacancies/index.html.erb" do
  before(:each) do
    assign(:vacancies, [
      stub_model(Vacancy,
        :fullname => "Fullname",
        :validperiod => 1,
        :salary => 1.5,
        :contactinfo => 1,
        :desirableskill => 1
      ),
      stub_model(Vacancy,
        :fullname => "Fullname",
        :validperiod => 1,
        :salary => 1.5,
        :contactinfo => 1,
        :desirableskill => 1
      )
    ])
  end

  it "renders a list of vacancies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
