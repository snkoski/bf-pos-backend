class Customer < ApplicationRecord
  belongs_to :table
  has_many :orders
  has_many :recipes, through: :orders
end
