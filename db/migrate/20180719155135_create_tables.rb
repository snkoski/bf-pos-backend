class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :user_id
      t.boolean :occupied

      t.timestamps
    end
  end
end
