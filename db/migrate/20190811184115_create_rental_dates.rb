class CreateRentalDates < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_dates do |t|
      t.integer :rental_id
      t.date :day

      t.timestamps
    end
  end
end
