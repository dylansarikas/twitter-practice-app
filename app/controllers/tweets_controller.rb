class TweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render json: tweets
  end

  def create
    tweets = Tweet.new(
      text: params[:text],
      user_id: params[:user_id]
    )
    if tweets.save
      render json: tweets
    else
      render json: {errors: tweets.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    number = params[:id].to_i
    tweets = Tweet.find(number)
    render json: tweets
  end

  def update
    number = params[:id].to_i
    tweets = Tweet.find(number)
    tweets.text = params[:text] || tweets.text
    tweets.user_id = params[:user_id] || tweets.user_id
    tweets.save
    render json: tweets
  end

  def destroy
    number = params[:id].to_i
    tweets = Tweet.find(number)
    tweets.destroy
    render json:{message: "The tweet #{tweets.text} was destroyed!  Do you feel good about yourself?"}
  end

end
