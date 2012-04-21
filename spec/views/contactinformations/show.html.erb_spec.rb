require 'spec_helper'

describe "contactinformations/show.html.erb" do
  before(:each) do
    @contactinformation = assign(:contactinformation, stub_model(Contactinformation,
      :telephone => "Telephone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
