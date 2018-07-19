class Recipe < ApplicationRecord
  has_many :proportions
  has_many :ingredients, through: :proportions
  has_and_belongs_to_many(:recipes,
    :join_table => "recipe_connections",
    :foreign_key => "post_a_id",
    :association_foreign_key => "post_b_id")
end
