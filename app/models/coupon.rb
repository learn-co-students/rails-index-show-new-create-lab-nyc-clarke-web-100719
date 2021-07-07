class Coupon < ApplicationRecord #shouldn't this be base??
    def to_s
        "/" + self.coupon_code + "|" + self.store + "/"
    end
end
