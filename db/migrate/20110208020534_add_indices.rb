class AddIndices < ActiveRecord::Migration
  def self.up
      add_index :job_skills, :job_id
      add_index :job_skills, :skill_id
      add_index :job_years, :job_id
      add_index :job_years, :year_id
      add_index :job_softwares, :job_id
      add_index :job_softwares, :software_id
      add_index :jobs, :start_year
      add_index :jobs, :end_year
      add_index :jobs, :start_month
      add_index :jobs, :end_month
      add_index :skills, :discipline_id
      drop_table :skill_groups
      drop_table :skill_skill_groups
  end

  def self.down                                         
      remove_index :job_skills, :job_id
      remove_index :job_skils, :skill_id
      remove_index :job_years, :job_id
      remove_index :job_years, :year_id
      remove_index :job_softwares, :job_id
      remove_index :job_softwares, :software_id
      remove_index :jobs, :start_year
      remove_index :jobs, :end_year
      remove_index :jobs, :start_month
      remove_index :jobs, :end_month
      remove_index :skills, :discipline_id
  end
end
