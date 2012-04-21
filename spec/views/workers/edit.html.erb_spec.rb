require 'spec_helper'

describe "workers/edit.html.erb" do
  before(:each) do
    @worker = assign(:worker, stub_model(Worker,
      :name => "MyString",
      :fname => "MyString",
      :oname => "MyString",
      :contactinfo => 1,
      :status => 1,
      :desiralesalary => 1.5,
      :skill => 1
    ))
  end

  it "renders the edit worker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workers_path(@worker), :method => "post" do
      assert_select "input#worker_name", :name => "worker[name]"
      assert_select "input#worker_fname", :name => "worker[fname]"
      assert_select "input#worker_oname", :name => "worker[oname]"
      assert_select "input#worker_contactinfo", :name => "worker[contactinfo]"
      assert_select "input#worker_status", :name => "worker[status]"
      assert_select "input#worker_desiralesalary", :name => "worker[desiralesalary]"
      assert_select "input#worker_skill", :name => "worker[skill]"
    end
  end
end
