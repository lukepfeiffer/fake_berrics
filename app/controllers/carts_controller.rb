class CartsController < ApplicationController
  def view_cart
    @cart = current_user.cart
  end
end
