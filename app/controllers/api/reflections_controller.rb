class Api::ReflectionsController < ApplicationController
  def index
    @reflections = Reflection.all
    render "index.json.jbuilder"
  end
  def show
    @reflection = Reflection.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    reflection = Reflection.new(
      reflection_type: params[:reflection_type],
      reflection_title: params[:reflection_title],
      reflection_body: params[:reflection_body],
      reflection_entry_date: params[:reflection_entry_date],
      journal_id: params[:journal_id],
    )
    if reflection.save
      render json: {message: 'reflection created successfully'}, status: :created
    else
      render json: {errors: reflection.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @reflection = Reflection.find_by(id: params[:id])
    @reflection.update(
      reflection_type: params[:reflection_type],
      reflection_title: params[:reflection_title],
      reflection_body: params[:reflection_body],
      reflection_entry_date: params[:reflection_entry_date],
      journal_id: params[:journal_id],
    )
    render "show.json.jbuilder"
  end
  def destroy
    @reflection = Reflection.find_by(id: params[:id])
    @reflection.destroy
    render json: {message: "You deleted this reflection entry"}
  end
end

