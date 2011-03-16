class DenormalizeJobDates < ActiveRecord::Migration
  def self.up
      change_table :jobs do |t|
         t.rename :start_date, :start_month
         t.rename :end_date, :end_month
         t.integer :start_year
         t.integer :end_year
      end
  end

  def self.down
      change_table :jobs do |t|
         t.rename :start_month, :start_date
         t.rename :end_month, :end_date
         t.remove :start_year, :end_year
      end
  end
end
