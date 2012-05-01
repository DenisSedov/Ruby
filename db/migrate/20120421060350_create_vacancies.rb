class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :fullname
      t.date :addingdate
      t.date :validperiod
      t.float :salary      
      t.integer :desirableskill

      t.timestamps
    end
  end

  
end
