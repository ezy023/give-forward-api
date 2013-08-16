class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(:email => params[:email], :password => params[:password])
    if user.save
      @session = user.generate_session_token
      render :json => @session
    else
      @errors = user.errors.full_messages
      render :json => @errors
    end
  end
end
