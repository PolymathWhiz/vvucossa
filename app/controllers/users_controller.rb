class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  def show
    @topic = Topic.new
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end
end
