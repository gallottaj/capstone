class Api::ReflectionsController < ApplicationController
  def index
    @reflections = Reflection.all
    render "index.json.jbuilder"
  end
  def show
    @reflection = Reflection.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
#   def create
#     track_habit = TrackHabit.new(
#       habit_name: params[:habit_name],
#       habit_repeat_frequency: params[:habit_repeat_frequency],
#       habit_completion_status: params[:habit_completion_status],
#       habit_time: params[:habit_time],
#       journal_id: params[:journal_id],
#     )
#     if track_habit.save
#       render json: {message: 'habit created successfully'}, status: :created
#     else
#       render json: {errors: track_habit.errors.full_messages}, status: :bad_request
#     end
#   end
#   def update
#     @track_habit = TrackHabit.find_by(id: params[:id])
#     @track_habit.update(
#       habit_name: params[:habit_name],
#       habit_repeat_frequency: params[:habit_repeat_frequency],
#       habit_completion_status: params[:habit_completion_status],
#       habit_time: params[:habit_time],
#       journal_id: params[:journal_id],
#     )
#     render "show.json.jbuilder"
#   end
#   def destroy
#     @track_habit = TrackHabit.find_by(id: params[:id])
#     @track_habit.destroy
#     render json: {message: "You deleted this habit"}
#   end
# end
end
