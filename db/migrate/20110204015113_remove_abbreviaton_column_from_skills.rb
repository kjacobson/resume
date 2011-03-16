class RemoveAbbreviatonColumnFromSkills < ActiveRecord::Migration
  def self.up
      remove_column :skills, :abbreviaton
  end

  def self.down
  end
end
