class CreateSkillSkillGroups < ActiveRecord::Migration
  def self.up
    create_table :skill_skill_groups do |t|
	  t.integer :skill_id, :null => false
	  t.integer :skill_group_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :skill_skill_groups
  end
end
