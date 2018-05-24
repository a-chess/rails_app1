class CreateTimecardDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :timecard_details do |t|
      t.references :timecard
      t.date :target_date
      t.integer :kinmu_jokyo
      t.time :start_time
      t.time :end_time
      
      t.timestamps
    end
  end
end
