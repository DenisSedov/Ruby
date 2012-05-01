class Contactinformation < ActiveRecord::Base
  #attr_accessible :email, :telephone
  belongs_to :contactinfo, :polymorphic => true
  accepts_nested_attributes_for :contactinfo
end
