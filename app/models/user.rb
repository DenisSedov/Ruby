class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :password, :password_confirmation
  validates :name,     :presence    => true,
                       :uniqueness  => { :case_sensitive => false}

  validates :password, :presence     => true,
                       :confirmation => true ,
                       :length       => { :minimum => 6} 

  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  private

    def encrypt_password
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt(string)
      string
    end

  

end
