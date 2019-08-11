class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :renter_id
      t.integer :equipment_id
      t.date :start_date
      t.date :end_date
      t.integer :price

      t.timestamps
    end
  end
end
