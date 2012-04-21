class CreateSkillgroups < ActiveRecord::Migration
  def change
    create_table :skillgroups do |t|
      t.integer :seniorid
      t.integer :skill

      t.timestamps
    end
  end
end
