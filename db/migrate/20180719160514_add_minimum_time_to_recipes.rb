class AddMinimumTimeToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :minimum_time, :string
  end
end
