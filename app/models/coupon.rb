class Coupon < ActiveRecord::Base

    def collate 
        self.coupon_code + " " + "-" + " " + self.store
    end

end