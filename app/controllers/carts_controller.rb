class CartsController < ApplicationController
  def view_cart
    if current_user.present?
      @cart = current_user.cart
    end
  end
end
