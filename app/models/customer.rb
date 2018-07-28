class Customer < ApplicationRecord
  after_initialize :init

  def init
    self.seated = true if
    (self.has_attribute? :seated) &&
    self.seated.nil?
  end

  # belongs_to :table
  has_many :orders
  has_many :recipes, through: :orders
end
