require 'spec_helper'

describe Contactinformation do

  before(:each) do
    @attr = { :email => "TestUser@gmail.com", :telephone => "89205832473"}  
  end 
 
  #it "should create a new instance given valid attributes" do
   # Contactinformation.create!(@attr)
  #end

  #it "should require a email" do
   # no_email_Contactinformation = Contactinformation.new(@attr.merge(:email => ""))
   # no_email_Contactinformation.should_not be_valid
  #end
  
end
