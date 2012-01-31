class ApplicationController < ActionController::Base
  protect_from_forgery


  def redirect_user
    if current_requester
      redirect_to requester_contests_path(current_requester)
    else
      redirect_to designers_path
    end
  end
end
