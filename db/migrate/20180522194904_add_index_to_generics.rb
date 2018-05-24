class AddIndexToGenerics < ActiveRecord::Migration[5.2]
  def change
    add_index :generics, [:kbn, :key1], unique: true
  end
end
