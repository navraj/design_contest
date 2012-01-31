class ContestsController < ApplicationController
  before_filter :authenticate_requester!

  def index
    @ongoing_contests = current_requester.contests.ongoing_contests
    @approved_contests = current_requester.contests.approved_contests
  end

  def new
    @contest = current_requester.contests.build
  end

  def create
    @contest = current_requester.contests.build(params[:contest])
    if @contest.save
      redirect_to requester_contests_path(current_requester), :notice => "contest successfully created"
    else
      render "new"
    end

  end

  def update
    @contest = Contest.find(params[:id])
  end
end
