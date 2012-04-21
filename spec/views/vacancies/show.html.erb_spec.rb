require 'spec_helper'

describe "vacancies/show.html.erb" do
  before(:each) do
    @vacancy = assign(:vacancy, stub_model(Vacancy,
      :fullname => "Fullname",
      :validperiod => 1,
      :salary => 1.5,
      :contactinfo => 1,
      :desirableskill => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fullname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
