class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :fullname
      #t.references :worker

      t.timestamps
    end
  end
end
