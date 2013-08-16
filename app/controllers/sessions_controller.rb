class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticated?(params[:password])
      @session = user.generate_session_token
      render :json => @session
    end
  end

end
