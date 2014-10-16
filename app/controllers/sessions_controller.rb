class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to videos_path
    else
      redirect_to log_in_path
    end
  end

  def destroy
    sign_out_user
    redirect_to videos_path
  end
end
