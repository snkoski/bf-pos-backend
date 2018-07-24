class Recipe < ApplicationRecord
  has_many :proportions
  has_many :ingredients, through: :proportions

  has_many :orders
  has_many :customers, through: :orders
end
