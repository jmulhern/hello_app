class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      # activate user
      user.activate
      flash[:success] = "Account activated!"
      log_in user
      redirect_to user
    else
      flash[:success] = "Invalid activation link"
      redirect_to root_url
    end
  end

end
