class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :table_id
      t.integer :seat_number

      t.timestamps
    end
  end
end
