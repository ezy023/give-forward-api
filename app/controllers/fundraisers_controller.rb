class FundraisersController < ApplicationController

  def index
    user_session = Session.find_by_token(params[:session_token])
    if user_session && !user_session.expired?
      @fundraisers = Fundraiser.all
      render :json => @fundraisers
    else
      @error = "Session no longer valid"
      render :json => @error
    end
  end

end
