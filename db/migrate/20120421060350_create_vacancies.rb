class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :fullname
      t.date :addingdate
      t.integer :validperiod
      t.float :salary
      t.integer :contactinfo
      t.integer :desirableskill

      t.timestamps
    end
  end
end
