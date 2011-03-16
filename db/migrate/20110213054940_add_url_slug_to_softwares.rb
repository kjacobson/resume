class AddUrlSlugToSoftwares < ActiveRecord::Migration
  def self.up
      add_column :softwares, :slug, :string, :index => true, :unique => true
  end

  def self.down
      remove_column :softwares, :slug
  end
end
