class AddTableNumberToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :table_number, :integer
  end
end
