class CreateTimeCardIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :time_card_indices do |t|
      t.string :target_month,null:false,unique: true 
      
      t.timestamps
    end
  end
end
