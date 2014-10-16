class PagesController < ApplicationController
  def home
  end

  def features
  end

  def log_in
    @user = User.new
  end
end
