class CreateContactinformations < ActiveRecord::Migration
  def change
    create_table :contactinformations do |t|
      t.string  :telephone
      t.string  :email
      t.references :contactinfo
      t.string :contactinfo_type
      
      t.timestamps
    end
    
  end
end
