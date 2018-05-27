class AddColumnToTcdetail < ActiveRecord::Migration[5.2]
  def change
    add_column :timecard_details, :break_time, :integer, default: 60
    add_column :timecard_details, :memo, :string
  end
end
