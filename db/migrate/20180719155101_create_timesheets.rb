class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.integer :user_id
      t.datetime :clock_in
      t.datetime :clock_out

      t.timestamps
    end
  end
end
