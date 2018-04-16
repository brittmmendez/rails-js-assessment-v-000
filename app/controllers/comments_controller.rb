class CommentsController < ApplicationController
  before_action :set_workout

  def index
    @comments = @workout.comments
   
  end

  def create
    @comment = current_user.comments.create(comment_params)
    @comment.workout_id = @workout.id
    @comment.save
    redirect_to @workout
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