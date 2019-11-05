class CouponsController < ApplicationController

def index
    @coupons = Coupon.all
end

def show
    @coupon = Coupon.find(params[:id])

end

def new
    @coupon = Coupon.new

end


def create
    # byebug
    @coupon = Coupon.new(coupon_params)

    if @coupon.save
        redirect_to @coupon
    else
        redirect_to coupons_path
    end


end


def coupon_params
    params.require(:coupon).permit("coupon_code","store")
end


end
