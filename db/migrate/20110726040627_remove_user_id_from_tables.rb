class RemoveUserIdFromTables < ActiveRecord::Migration
  def self.up
      remove_column :skills, :user_id
      remove_column :softwares, :user_id
      remove_column :years, :user_id
      remove_column :jobs, :user_id
      remove_column :job_skills, :user_id
      remove_column :job_softwares, :user_id
      remove_column :job_years, :user_id
      remove_column :disciplines, :user_id
      remove_column :highlights, :user_id
  end

  def self.down
      add_column :skills, :user_id, :integer, :index => true
      add_column :softwares, :user_id, :integer, :index => true
      add_column :years, :user_id, :integer, :index => true
      add_column :jobs, :user_id, :integer, :index => true
      add_column :job_skills, :user_id, :integer, :index => true
      add_column :job_softwares, :user_id, :integer, :index => true
      add_column :job_years, :user_id, :integer, :index => true
      add_column :disciplines, :user_id, :integer, :index => true
      add_column :highlights, :user_id, :integer, :index => true
  end
end
