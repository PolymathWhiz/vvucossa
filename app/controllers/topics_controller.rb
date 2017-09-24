class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  
  # def new
  #   @topic = Topic.new
  # end

  # def index
  #   @topics = Topic.all
  # end

  def show; end

  def edit; end

  def create
    @topic = current_user.topics.build(topic_params)
    respond_to do |format|
      if @topic.save
        # redirect_back(fallback_location: fallback_location) 
        format.js { render js: "Materialize.toast('Topic created successfully!', 3000); location.reload();"}
      else
        format.js { render js: "Materialize.toast('Unable to create topic!', 3000);"}
      end
    end
  end

  def update; end

  def destroy; end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :description)
  end
end
