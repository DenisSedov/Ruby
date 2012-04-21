require 'spec_helper'

describe "contactinformations/edit.html.erb" do
  before(:each) do
    @contactinformation = assign(:contactinformation, stub_model(Contactinformation,
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contactinformation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contactinformations_path(@contactinformation), :method => "post" do
      assert_select "input#contactinformation_telephone", :name => "contactinformation[telephone]"
      assert_select "input#contactinformation_email", :name => "contactinformation[email]"
    end
  end
end
