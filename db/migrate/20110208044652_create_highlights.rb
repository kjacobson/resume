class CreateHighlights < ActiveRecord::Migration
  def self.up
    create_table :highlights do |t|
      t.integer :job_id, :null => false, :index => true
      t.integer :skill_id, :null => false, :index => false
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :highlights
  end
end
