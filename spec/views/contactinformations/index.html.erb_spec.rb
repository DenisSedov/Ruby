require 'spec_helper'

describe "contactinformations/index.html.erb" do
  before(:each) do
    assign(:contactinformations, [
      stub_model(Contactinformation,
        :telephone => "Telephone",
        :email => "Email"
      ),
      stub_model(Contactinformation,
        :telephone => "Telephone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contactinformations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
