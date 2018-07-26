class AddSeatedToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :seated, :boolean
  end
end
