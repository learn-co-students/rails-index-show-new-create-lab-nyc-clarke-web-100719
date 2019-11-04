class Coupon < ActiveRecord::Base
    

    def to_str
        self.coupon_code + " " + self.store
    end
    
end