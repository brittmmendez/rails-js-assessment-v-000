module WorkoutsHelper

  def last_updated(workout)
    workout.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
  end

  def filter_workouts(params)
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to workouts_path, alert: "User not found"
      else
        @workouts = @user.workouts
      end

    elsif !params[:category].blank? && !params[:training_type].blank? && !params[:difficulty].blank?
      category =Workout.by_category(params[:category])
      training =category.by_training_type(params[:training_type])
      @workouts =training.by_difficulty(params[:difficulty])
  
    elsif !params[:category].blank? && !params[:training_type].blank?
      category =Workout.by_category(params[:category])
      @workouts =category.by_training_type(params[:training_type])
  
    elsif !params[:category].blank? && !params[:difficulty].blank?
      category =Workout.by_category(params[:category])
      @workouts =category.by_difficulty(params[:difficulty])
  
    elsif !params[:training_type].blank? && !params[:difficulty].blank?
      training =Workout.by_training_type(params[:training_type])
      @workouts =training.by_difficulty(params[:difficulty])
  
    elsif !params[:category].blank?
      @workouts =Workout.by_category(params[:category])
  
    elsif !params[:training_type].blank?
      @workouts =Workout.by_training_type(params[:training_type])
  
    elsif !params[:difficulty].blank?
      @workouts =Workout.by_difficulty(params[:difficulty])
  
    elsif !params[:min].blank?
      @workouts =Workout.by_min(params[:min])
  
    elsif !params[:max].blank?
      @workouts =Workout.by_max(params[:max])
  
    else
      # if no filters are applied, show all workouts
      @workouts=Workout.all
    end
  end

  

end
