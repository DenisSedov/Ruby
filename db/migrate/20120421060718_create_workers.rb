class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :fname
      t.string :oname
      t.references :status
      t.float :desiralesalary
      t.integer :skill

      t.timestamps
    end
  end
end
