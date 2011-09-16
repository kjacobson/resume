class CreateCvs < ActiveRecord::Migration
  def self.up
    create_table :cvs do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :cvs
  end
end
