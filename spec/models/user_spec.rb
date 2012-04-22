require 'spec_helper'

describe User do
   
  before(:each) do
    @attr = { :name => "TestUser", :pas => "TestPassword"}  
  end 
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end

  it "should require a pas" do
    no_name_user = User.new(@attr.merge(:pas => ""))
    no_name_user.should_not be_valid
  end
 
  it "should reject duplicate name" do
		User.create!(@attr)
		user_with_duplicate_name = User.new(@attr)
		user_with_duplicate_name.should_not be_valid 
	end
  
   
end
