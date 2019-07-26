class SessionsController < ApplicationController
  def new
  end

  def create 
    if params[:name] == ""
      redirect_to '/'
    elsif params[:name] == nil 
      redirect_to '/'
    else 
      session[:name] = params[:name]
      redirect_to '/welcome'
    end 
  end 

  def destroy
    session.destroy 
    redirect_to '/'
  end 
  
end
