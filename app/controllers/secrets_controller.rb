class SecretsController < ApplicationController
  before_action :require_login
  
  def new
  end

  def show
    @current_user = current_user 
  end 

  private
 
  def require_login
    redirect_to '/' unless session.include? :name 
  end
end
