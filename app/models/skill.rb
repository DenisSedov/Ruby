class Skill < ActiveRecord::Base
  attr_accessible :fullname

  has_one :vacancy, :class_name => "Contactinformation",  
                    :as => :contactinfo, 
                    :foreign_key => :contactinfo_id, 
                    :dependent => :destroy

 has_and_belongs_to_many :vacancies
                      
end
