class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def add_to_cart
    item.quantity = item.quantity + added_quantity
    item.save
    redirect_to product_path(item.product)
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

  private

  def added_quantity
    params.fetch(:quantity, 1).to_i
  end

  def item
    @item ||= current_user.cart.items.find_or_initialize_by(product_id: params[:product_id])
  end

end
