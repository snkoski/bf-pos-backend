class AddDateToUsedIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :used_ingredients, :date, :date
  end
end
