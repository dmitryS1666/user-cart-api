class CartsController < ApplicationController
  before_action :set_cart, only: :show

  def show
    json_response(@cart)
  end

  private

  def set_cart
    @cart = Cart.get_cart
    @cart.save!
  end

end
