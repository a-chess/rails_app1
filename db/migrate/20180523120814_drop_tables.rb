class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :details
    drop_table :friends
    drop_table :timecard_details
  end
end
