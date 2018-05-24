class CreateTimecards < ActiveRecord::Migration[5.2]
  def change
    create_table :timecards do |t|
      t.integer :emp_id, null: false
      t.string :target_month, null: false
      t.boolean :shinsei_flg, default: false
      t.boolean :shonin_flg, default: false
      
      t.timestamps
    end
  end
end
