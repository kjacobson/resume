class CreateJobYears < ActiveRecord::Migration
  def self.up
    create_table :job_years do |t|
      t.integer :job_id
      t.integer :year_id

      t.timestamps
    end
  end

  def self.down
    drop_table :job_years
  end
end
