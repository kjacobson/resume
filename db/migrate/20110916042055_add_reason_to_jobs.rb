class AddReasonToJobs < ActiveRecord::Migration
  def self.up
      add_column :jobs, :reason, :text
  end

  def self.down
      remove_column :jobs, :reason
  end
end
