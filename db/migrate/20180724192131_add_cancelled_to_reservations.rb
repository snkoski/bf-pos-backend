class AddCancelledToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :cancelled, :boolean
  end
end
