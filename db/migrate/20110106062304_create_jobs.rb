class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.string :employer
      t.string :project
      t.string :url
      t.integer :start_date
      t.integer :end_date
      t.text :short_desc
      t.text :long_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
