require 'spec_helper'

describe "statuses/edit.html.erb" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :fullname => "MyString"
    ))
  end

  it "renders the edit status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => statuses_path(@status), :method => "post" do
      assert_select "input#status_fullname", :name => "status[fullname]"
    end
  end
end
