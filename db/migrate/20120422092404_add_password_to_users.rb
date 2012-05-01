class AddPasswordToUsers < ActiveRecord::Migration
  def up
    #add_column :users, :encripted_password, :string
  end
  
  def down
    #remove_column :users, :encripted_password    
  end
end
