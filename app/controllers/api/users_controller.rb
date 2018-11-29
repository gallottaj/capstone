class Api::UsersController < ApplicationController
  # a user doesn't need to see all users
  # def index
  #   @users = User.all
  #   p current_user
  #   render "index.json.jbuilder"
  # end
  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    render "show.json.jbuilder"
  end
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "You just deleted the user"}
  end
end
