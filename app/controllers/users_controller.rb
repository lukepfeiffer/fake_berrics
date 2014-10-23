class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def add_to_cart
    product = Product.find(params[:product_id])
    current_user.cart.products << product
    redirect_to product_path(product)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to videos_path
    else
      render sign_in_path
    end
  end

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end
end
