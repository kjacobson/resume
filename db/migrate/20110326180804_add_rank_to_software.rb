class AddRankToSoftware < ActiveRecord::Migration
  def self.up
      add_column :softwares, :rank, :integer, :index => true
  end

  def self.down
      remove_column :softwares, :rank
  end
end
