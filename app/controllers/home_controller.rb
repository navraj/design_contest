class HomeController < ApplicationController
  before_filter :redirect_user, :only =>[:index]
  def index

  end
end
