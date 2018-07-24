class Reservation < ApplicationRecord
  after_initialize :init

  def init
    self.cancelled = false if
    (self.has_attribute? :cancelled) &&
    self.cancelled.nil?
  end
end
