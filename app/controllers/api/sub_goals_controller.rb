class Api::SubGoalsController < ApplicationController
  # def index
  #   @sub_goals = SubGoal.all
  #   render "index.json.jbuilder"
  # end
  def show
    @sub_goal = SubGoal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    sub_goal = SubGoal.new(
      sub_goal_name: params[:sub_goal_name],
      sub_goal_due_date: params[:sub_goal_due_date],
      sub_goal_status: params[:sub_goal_status],
      goal_id: params[:goal_id]
    )
    if sub_goal.save
      render json: {message: 'sub_goal created successfully'}, status: :created
    else
      render json: {errors: sub_goal.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @sub_goal = SubGoal.find_by(id: params[:id])
    @sub_goal.update(
      sub_goal_name: params[:sub_goal_name],
      sub_goal_due_date: params[:sub_goal_due_date],
      sub_goal_status: params[:sub_goal_status],
      goal_id: params[:goal_id]
    )
    render "show.json.jbuilder"
  end
  def destroy
    @sub_goal = SubGoal.find_by(id: params[:id])
    @sub_goal.destroy
    render json: {message: "You deleted this sub_goal"}
  end
end
