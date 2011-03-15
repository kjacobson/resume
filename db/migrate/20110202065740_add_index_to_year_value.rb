class AddIndexToYearValue < ActiveRecord::Migration
  def self.up
	  add_index :years, :value, :unique => true
  end

  def self.down
	  remove_index :years, :value
  end
end
