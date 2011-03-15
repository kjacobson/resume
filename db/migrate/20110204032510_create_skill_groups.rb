class CreateSkillGroups < ActiveRecord::Migration
  def self.up
    create_table :skill_groups do |t|
	  t.string :title, :unique => true, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :skill_groups
  end
end
