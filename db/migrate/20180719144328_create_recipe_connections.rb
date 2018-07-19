class CreateRecipeConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_connections, :force => true, :id => false do |t|
      t.integer :recipe_a_id, null => false
      t.integer :recipe_b_id, null => false

      t.timestamps
    end
  end
end
