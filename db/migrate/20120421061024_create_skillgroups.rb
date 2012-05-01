class CreateSkillgroups < ActiveRecord::Migration
  def change
    create_table :skillgroups, :id => false do |t|
      t.integer :parent_id
      t.string :parent_type
      t.integer :skill_id

      t.timestamps
    end
  end
end
