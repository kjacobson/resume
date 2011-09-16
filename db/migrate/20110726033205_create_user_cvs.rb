class CreateUserCvs < ActiveRecord::Migration
  def self.up
    create_table :user_cvs do |t|
      t.integer :user_id, :index => true
      t.integer :cv_id, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :user_cvs
  end
end
