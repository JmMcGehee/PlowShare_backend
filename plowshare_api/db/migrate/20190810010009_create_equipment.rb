class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :title
      t.string :img
      t.string :owner_id

      t.timestamps
    end
  end
end
