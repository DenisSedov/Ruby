class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :fullname

      t.timestamps
    end
  end
end