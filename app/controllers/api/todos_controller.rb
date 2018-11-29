class Api::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render "index.json.jbuilder"
  end
  def show
    @todo = Todo.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    todo = Todo.new(
      task_name: params[:task_name],
      task_description: params[:task_description],
      # sub_goal_id: params[:sub_goal_id],
      task_checkbox_status: params[:task_checkbox_status],
      journal_id: params[:journal_id],
    )
    if todo.save
      render json: {message: 'todo created successfully'}, status: :created
    else
      render json: {errors: todo.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.update(
      task_name: params[:task_name],
      task_description: params[:task_description],
      # sub_goal_id: params[:sub_goal_id],
      task_checkbox_status: params[:task_checkbox_status],
      journal_id: params[:journal_id],
    )
    render "show.json.jbuilder"
  end
  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    render json: {message: "You deleted this todo"}
  end
end