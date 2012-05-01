class Vacancy < ActiveRecord::Base

  attr_accessible :addingdate,                    
                  :desirableskill, 
                  :fullname, 
                  :salary, 
                  :validperiod,
                  :comments,
                  :skills

  has_one :contactinformation, :class_name => "Contactinformation",  
                               :as => :contactinfo, 
                               :foreign_key => :contactinfo_id, 
                               :dependent => :destroy

  accepts_nested_attributes_for :contactinformation

  has_and_belongs_to_many :skills


end
