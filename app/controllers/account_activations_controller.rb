class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user&.authenticated?(:activation, params[:id])
      # activate user
    else
      # invalid link
    end
  end

end
