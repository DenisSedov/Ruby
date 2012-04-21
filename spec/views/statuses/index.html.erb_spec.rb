require 'spec_helper'

describe "statuses/index.html.erb" do
  before(:each) do
    assign(:statuses, [
      stub_model(Status,
        :fullname => "Fullname"
      ),
      stub_model(Status,
        :fullname => "Fullname"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
  end
end
