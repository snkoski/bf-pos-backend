class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :guest_name
      t.integer :number_of_guests
      t.datetime :date
      t.datetime :time
      t.text :special_requests
      t.integer :table_number

      t.timestamps
    end
  end
end
