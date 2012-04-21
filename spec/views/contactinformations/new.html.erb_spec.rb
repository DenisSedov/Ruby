require 'spec_helper'

describe "contactinformations/new.html.erb" do
  before(:each) do
    assign(:contactinformation, stub_model(Contactinformation,
      :telephone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new contactinformation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contactinformations_path, :method => "post" do
      assert_select "input#contactinformation_telephone", :name => "contactinformation[telephone]"
      assert_select "input#contactinformation_email", :name => "contactinformation[email]"
    end
  end
end
