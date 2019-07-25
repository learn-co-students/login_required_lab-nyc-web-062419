class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] != nil && params[:name].length > 0
      session[:name] = params[:name]
      redirect_to '/login/welcome'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if current_user != nil
      session.delete :name
    end
  end
end
