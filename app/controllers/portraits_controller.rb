class PortraitsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.portrait.attach(params[:portrait])
    redirect_to(user_path)
  end
end
