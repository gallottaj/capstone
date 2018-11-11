class Api::GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render "index.json.jbuilder"
  end
  def show
    @goal = Goal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    goal = Goal.new(
      goal_name: params[:goal_name],
      due_date: params[:due_date],
      status: params[:status],
    )
    if goal.save
      render json: {message: 'goal created successfully'}, status: :created
    else
      render json: {errors: goal.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.update(
      goal_name: params[:goal_name],
      due_date: params[:due_date],
      status: params[:status],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
  end
  def destroy
    @goal = Goal.find_by(id: params[:id])
    @goal.destroy
    render json: {message: "You deleted this goal"}
  end
end


