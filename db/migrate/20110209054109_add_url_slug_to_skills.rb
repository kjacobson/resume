class AddUrlSlugToSkills < ActiveRecord::Migration
  def self.up
	  add_column :skills, :slug, :string, :index => true, :unique => true
  end

  def self.down
	  remove_column :skills, :slug
  end
end
