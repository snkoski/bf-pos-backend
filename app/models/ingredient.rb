class Ingredient < ApplicationRecord
  has_many :proportions
  has_many :recipes, through: :proportions
  has_and_belongs_to_many(:ingredients,
    :join_table => "ingredient_connections",
    :foreign_key => "post_a_id",
    :association_foreign_key => "post_b_id")
end
