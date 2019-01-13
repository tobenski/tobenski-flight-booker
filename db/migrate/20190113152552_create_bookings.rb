class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :flight, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
