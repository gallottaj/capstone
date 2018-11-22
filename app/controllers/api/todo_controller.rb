class Api::TodoController < ApplicationController
  def index
    @todos = Todo.all
    render "index.json.jbuilder"
  end
#   def show
#     @journal = Journal.find_by(id: params[:id])
#     render "show.json.jbuilder"
#   end
#   def create
#     journal = Journal.new(
#       entry_type: params[:entry_type],
#       text: params[:text],
#       sub_goal_id: params[:sub_goal_id],
#     )
#     if journal.save
#       render json: {message: 'journal created successfully'}, status: :created
#     else
#       render json: {errors: journal.errors.full_messages}, status: :bad_request
#     end
#   end
#   def update
#     @journal = Journal.find_by(id: params[:id])
#     @journal.update(
#       entry_type: params[:entry_type],
#       text: params[:text],
#       sub_goal_id: params[:sub_goal_id]
#     )
#     render "show.json.jbuilder"
#   end
#   def destroy
#     @journal = Journal.find_by(id: params[:id])
#     @journal.destroy
#     render json: {message: "You deleted this journal"}
#   end
end