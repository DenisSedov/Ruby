class Worker < ActiveRecord::Base
  attr_accessible :desiralesalary, 
                  :fname, 
                  :name, 
                  :oname, 
                  :skill
                  
  
  has_one :contactinformation, :class_name => "Contactinformation",  
                               #:as => :contactinfo, 
                               :foreign_key => :contactinfo_id, 
                               :dependent => :destroy

  accepts_nested_attributes_for :contactinformation

  belongs_to :status
  
 
  #accepts_nested_attributes_for :statuses, :allow_destroy => :trye,
   # :reject_if => proc { attrs| attrs.all? {|k, v| v.blank?}}

end
