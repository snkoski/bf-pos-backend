class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :foh
      t.boolean :boh
      t.integer :admin

      t.timestamps
    end
  end
end
