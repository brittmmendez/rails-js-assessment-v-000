class CommentsController < ApplicationController
  before_action :set_workout

  def index
    @comments = @workout.comments
    #using serializer
    render :json => @comments
    # respond_to do |format|
    #   format.js {render :json => @comments}
    #   format.html {render 'index.html'}
    # end
  end

  def create
    @comment = current_user.comments.create(comment_params)
    @comment.workout_id = @workout.id
    if @comment.save
      render 'comments/show', :layout => false
    else
      render "workouts/show"
    #render json: @comment, status: 201
    end
  end


  def new
    @comment = Comment.new
  end

  private

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end