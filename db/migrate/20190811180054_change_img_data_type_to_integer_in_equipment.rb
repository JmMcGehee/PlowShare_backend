class ChangeImgDataTypeToIntegerInEquipment < ActiveRecord::Migration[6.0]
  def change
    remove_column :equipment, :owner_id
  end
end
