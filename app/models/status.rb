class Status < ActiveRecord::Base
  attr_accessible :fullname
  has_many :workers

  #belongs_to :woskers

end
