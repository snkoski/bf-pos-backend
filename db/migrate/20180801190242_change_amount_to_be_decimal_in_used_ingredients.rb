class ChangeAmountToBeDecimalInUsedIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :used_ingredients, :amount, 'decimal USING CAST(amount AS decimal)'
  end
end
