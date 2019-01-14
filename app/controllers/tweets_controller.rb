class TweetsController < ApplicationController

before_action :move_to_index, except: :index

move_to_index→


  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  # def create
  #     Tweet.create(name: params[:name], image: params[:image], text: params[:text])
  #     # paramsから適切なキーを取り出すことで、ユーザーが入力する値をテーブルに保存
  # end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end


end
