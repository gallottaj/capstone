class Api::GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render "index.json.jbuilder"
  end
end

