class AddChanges < ActiveRecord::Migration[6.1]
  def change
  	add_column :students,:roll_no,:integer
  	rename_column :employees,:salary,:wage
  	remove_timestamps :students
  end
end
