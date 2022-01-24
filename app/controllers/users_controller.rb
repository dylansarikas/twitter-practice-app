class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    users = User.new(
      name: params[:name],
      email: params[:email]
    )
    if users.save
      render json: users
    else
      render json: {errors: users.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    number = params[:id].to_i
    users = User.find(number)
    render json: users
  end

  def update
    number = params[:id].to_i
    users = User.find(number)
    users.name = params[:name] || users.name
    users.email = params[:email] || users.email
    users.save
    render json: users
  end

  def destroy
    number = params[:id].to_i
    users = User.find(number)
    users.destroy
    render json:{message: "The user #{users.name} was destroyed!  Do you feel good about yourself?"}
  end

end
