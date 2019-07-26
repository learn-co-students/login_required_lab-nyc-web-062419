class SecretsController < ApplicationController
  def index
  end

  def show
    if current_user == nil
      redirect_to '/sessions/new'
    end
  end


end
