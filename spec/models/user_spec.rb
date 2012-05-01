require 'spec_helper'

describe User do
   
  before(:each) do
    @attr = { 
      :name => "TestUser3", 
      :password  => "TestPassword", 
      :password_confirmation => "TestPassword"
    }  
  end 
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end

  it "should reject duplicate name" do
    User.new(@attr)
    user_with_duplicate_name = User.new(@attr)
    user_with_duplicate_name.should_not be_valid
  end

  describe "password validations" do
		 
    it "should require a password" do
      no_pas_user = User.new(@attr.merge(:password => "", :password_confirmation => ""))
      no_pas_user.should_not be_valid
    end
    
    #if "should require a matching password confirmation" do
      #User.new(@attr.merge(:pas_confirmation => "Invalid")).should_not be_valid
    #end
		
      #if "should reject short password" do
	      #short = "a" * 5
        #hash = @attr.merge(:pas => short, :pas_confirmation => short)
	      #User.new(hash).should_not be_valid
      #end		

  end
   
  describe "password encription" do    
    before(:each) do
      @user = User.create!(@attr)
    end
 
    it "should have an encripted password atribute" do
      @user.should respond_to(:encripted_password)
    end
    
    it "should set the encrypted_password" do
      @user.encrypted_password.should_not be_blank
    end

  end

  describe "has_password? method" do
  
    it "should be true if the passwords match" do
      @user.has_password?(@attr[:password]).should be_true
    end  

    it "should be false if passwords don'n math" do
      @user.has_password?("invalid").should be_false
    end

  end

end
