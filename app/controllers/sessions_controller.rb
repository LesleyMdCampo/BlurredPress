class SessionsController < ApplicationController
  def create
    session[:user_id] = User.first.id
    redirect_to posts_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
