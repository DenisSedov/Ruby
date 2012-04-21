require 'spec_helper'

describe "workers/show.html.erb" do
  before(:each) do
    @worker = assign(:worker, stub_model(Worker,
      :name => "Name",
      :fname => "Fname",
      :oname => "Oname",
      :contactinfo => 1,
      :status => 1,
      :desiralesalary => 1.5,
      :skill => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Oname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
