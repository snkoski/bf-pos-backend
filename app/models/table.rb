class Table < ApplicationRecord

  # scope :occupied_tables, -> { where(occupied: true) }

  has_many :customers
  has_many :orders, through: :customers
  has_many :recipes, through: :orders
  belongs_to :user
end
