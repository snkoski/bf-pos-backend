class CreateStaticTables < ActiveRecord::Migration[5.2]
  def change
    create_table :static_tables do |t|
      t.boolean :occupied

      t.timestamps
    end
  end
end
