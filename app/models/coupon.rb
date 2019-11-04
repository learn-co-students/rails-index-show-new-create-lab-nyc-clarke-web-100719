class Coupon < ApplicationRecord
    def coupon_info
        self.coupon_code + " " + self.store
    end
end
