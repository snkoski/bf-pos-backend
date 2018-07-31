class AddSeatedToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :seated, :boolean
  end
end
