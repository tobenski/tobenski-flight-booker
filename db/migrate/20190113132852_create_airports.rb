class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :code
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
