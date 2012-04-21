class CreateContactinformations < ActiveRecord::Migration
  def change
    create_table :contactinformations do |t|
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
