class AddForeignKeyToTimecards < ActiveRecord::Migration[5.2]
  def change
    add_index :timecards, [:emp_id, :target_month], unique: true
    # add_foreign_key :timecards, :users
  end
end
