require 'spec_helper'

describe "vacancies/new.html.erb" do
  before(:each) do
    assign(:vacancy, stub_model(Vacancy,
      :fullname => "MyString",
      :validperiod => 1,
      :salary => 1.5,
      :contactinfo => 1,
      :desirableskill => 1
    ).as_new_record)
  end

  it "renders new vacancy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vacancies_path, :method => "post" do
      assert_select "input#vacancy_fullname", :name => "vacancy[fullname]"
      assert_select "input#vacancy_validperiod", :name => "vacancy[validperiod]"
      assert_select "input#vacancy_salary", :name => "vacancy[salary]"
      assert_select "input#vacancy_contactinfo", :name => "vacancy[contactinfo]"
      assert_select "input#vacancy_desirableskill", :name => "vacancy[desirableskill]"
    end
  end
end
