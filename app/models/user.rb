class User < ActiveRecord::Base
  attr_accessible :name, :pas
  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false}

  validates :pas, :presence    => true 
end
