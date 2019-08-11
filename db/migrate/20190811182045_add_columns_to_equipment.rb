class AddColumnsToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :make, :string
    add_column :equipment, :model, :string
    add_column :equipment, :year, :integer
    add_column :equipment, :rate, :integer
    add_column :equipment, :location, :string
    add_column :equipment, :owner_id, :integer
  end
end
