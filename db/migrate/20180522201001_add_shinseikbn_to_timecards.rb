class AddShinseikbnToTimecards < ActiveRecord::Migration[5.2]
  def change
    remove_column :timecards, :shinsei_flg, :boolean
    remove_column :timecards, :shonin_flg, :boolean
    add_column :timecards, :shinsei_kbn, :integer
  end
end
