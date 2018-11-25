class Api::JournalsController < ApplicationController
  def index
    @journals = Journal.all
    render "index.json.jbuilder"
  end
  def show
    @journal = Journal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    journal = Journal.new(
      entry_type: params[:entry_type],
      entry_body: params[:entry_body],
      entry_title: params[:entry_title],
      user_id: params[:user_id],
    )
    if journal.save
      render json: {message: 'journal created successfully'}, status: :created
    else
      render json: {errors: journal.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @journal = Journal.find_by(id: params[:id])
    @journal.update(
      entry_type: params[:entry_type],
      entry_body: params[:entry_body],
      entry_title: params[:entry_title],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
  end
  def destroy
    @journal = Journal.find_by(id: params[:id])
    @journal.destroy
    render json: {message: "You deleted this journal"}
  end
end
