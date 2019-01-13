class AddFlightToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_reference :passengers, :flight, index: true, foreign_key: true
  end
end
