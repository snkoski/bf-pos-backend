class User < ApplicationRecord
  has_many :timesheets
  has_many :tables
  has_many :customers, through: :tables
  has_many :orders, through: :customers
  has_many :recipes, through: :orders
end
