class CreateUsedIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :used_ingredients do |t|
      t.string :name
      t.decimal :price
      t.integer :amount

      t.timestamps
    end
  end
end
