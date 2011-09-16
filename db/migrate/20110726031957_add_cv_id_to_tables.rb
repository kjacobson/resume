class AddCvIdToTables < ActiveRecord::Migration
  def self.up
      add_column :skills, :cv_id, :integer, :index => true
      add_column :softwares, :cv_id, :integer, :index => true
      add_column :years, :cv_id, :integer, :index => true
      add_column :jobs, :cv_id, :integer, :index => true
      add_column :job_skills, :cv_id, :integer, :index => true
      add_column :job_softwares, :cv_id, :integer, :index => true
      add_column :job_years, :cv_id, :integer, :index => true
      add_column :disciplines, :cv_id, :integer, :index => true
      add_column :highlights, :cv_id, :integer, :index => true
  end

  def self.down
      remove_column :skills, :cv_id
      remove_column :softwares, :cv_id
      remove_column :years, :cv_id
      remove_column :jobs, :cv_id
      remove_column :job_skills, :cv_id
      remove_column :job_softwares, :cv_id
      remove_column :job_years, :cv_id
      remove_column :disciplines, :cv_id
      remove_column :highlights, :cv_id
  end
end
