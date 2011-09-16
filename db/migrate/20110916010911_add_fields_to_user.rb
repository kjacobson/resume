class AddFieldsToUser < ActiveRecord::Migration
  def self.up
      add_column :users, :name, :string
      add_column :users, :address, :string
  end

  def self.down
      remove_column :users, :address
      remove_column :users, :name
  end
end
