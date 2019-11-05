class Coupon < ApplicationRecord

  validates :coupon_code, :store, presence: true

  def to_s
    self.coupon_code + " " + self.store
  end

end
