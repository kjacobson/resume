class AddRankToSkill < ActiveRecord::Migration
  def self.up
	  add_column :skills, :rank, :integer, :index => true
  end

  def self.down
	  remove_column :skills, :rank
  end
end
