class AddAbbreviatonColumnToSkills < ActiveRecord::Migration
  def self.up
      add_column :skills, :abbreviation, :string
  end

  def self.down
      remove_column :skills, :abbreviation
  end
end
