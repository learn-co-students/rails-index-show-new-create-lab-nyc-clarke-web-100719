
class CouponsController < ApplicationController
  before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
    render :index
  end

  def new
    render :new
  end

  def create
    @coupon = Coupon.create(coupon_params)

    if @coupon.valid?
      redirect_to coupon_path(@coupon)
    else
      flash[:messages] = @coupon.errors.full_messages
      redirect_to new_coupon_path
    end
  end

  def show
    render :show
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

end