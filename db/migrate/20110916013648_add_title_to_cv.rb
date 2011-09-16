class AddTitleToCv < ActiveRecord::Migration
  def self.up
      add_column :cvs, :title, :string
  end

  def self.down
      remove_column :cvs, :title
  end
end
