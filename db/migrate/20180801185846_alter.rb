class Alter < ActiveRecord::Migration[5.2]
  def change
    change_column :proportions, :amount, 'decimal USING CAST(amount AS decimal)'
  end
end
