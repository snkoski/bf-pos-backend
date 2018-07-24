class Table < ApplicationRecord
  has_many :customers
  has_many :orders, through: :customers
  has_many :recipes, through: :orders
  belongs_to :user
end
