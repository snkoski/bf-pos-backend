class CreateWaitlists < ActiveRecord::Migration[5.2]
  def change
    create_table :waitlists do |t|
      t.string :guest_name
      t.string :phone_number
      t.integer :number_of_guests
      t.datetime :date
      t.datetime :start_waitlist
      t.datetime :end_waitlist
      t.boolean :cancelled

      t.timestamps
    end
  end
end
