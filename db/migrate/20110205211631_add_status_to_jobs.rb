class AddStatusToJobs < ActiveRecord::Migration
  def self.up
	  add_column :jobs, :status, :string
  end

  def self.down
	  add_column :jobs, :status
  end
end
