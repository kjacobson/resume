class RemoveUserCvsAddUserIdToCv < ActiveRecord::Migration
  def self.up
    drop_table :user_cvs
    add_column :cvs, :user_id, :integer, :index => true
  end

  def self.down
    remove_column :cvs, :user_id
    create_table :user_cvs do |t|
      t.integer :user_id, :index => true
      t.integer :cv_id, :index => true
      t.timestamps
    end
  end
end
