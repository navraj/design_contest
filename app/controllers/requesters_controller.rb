class RequestersController < ApplicationController
  before_filter :authenticate_requester!
  def index
  end

  def new_contest
    @design = current_user.design.build
  end
end
