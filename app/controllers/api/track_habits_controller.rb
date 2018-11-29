class Api::TrackHabitsController < ApplicationController
  # a user should be able to create a habit they want to track
  # a user should be able to update a habit
  # a user should be able to destroy a habit
  # a user should be able to see all habits
  # a user should be able to see a specific habit
  def index
    @track_habits = TrackHabit.all
    render "index.json.jbuilder"
  end
  def show
    @track_habit = TrackHabit.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  # def create
  #   todo = Todo.new(
  #     task_name: params[:task_name],
  #     task_description: params[:task_description],
  #     # sub_goal_id: params[:sub_goal_id],
  #     task_checkbox_status: params[:task_checkbox_status],
  #     journal_id: params[:journal_id],
  #   )
  #   if todo.save
  #     render json: {message: 'todo created successfully'}, status: :created
  #   else
  #     render json: {errors: todo.errors.full_messages}, status: :bad_request
  #   end
  # end
  # def update
  #   @todo = Todo.find_by(id: params[:id])
  #   @todo.update(
  #     task_name: params[:task_name],
  #     task_description: params[:task_description],
  #     # sub_goal_id: params[:sub_goal_id],
  #     task_checkbox_status: params[:task_checkbox_status],
  #     journal_id: params[:journal_id],
  #   )
  #   render "show.json.jbuilder"
  # end
  # def destroy
  #   @todo = Todo.find_by(id: params[:id])
  #   @todo.destroy
  #   render json: {message: "You deleted this todo"}
  # end
end



   # "habit_name"
   # "habit_repeat_frequency"
   # "habit_completion_status"
   # "habit_time"
   # "journal_id"