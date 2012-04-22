class Contactinformation < ActiveRecord::Base
  attr_accessible :email, :telephone
  
  #email_regex = [\w@\.]
  #validates :email, format => { :with => email_regex}
end
