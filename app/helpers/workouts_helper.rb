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

#all 5 filters
    elsif !params[:category].blank? && !params[:training_type].blank? && !params[:difficulty].blank? && !params[:min].blank? && !params[:max].blank?
      category =Workout.by_category(params[:category])
      training =category.by_training_type(params[:training_type])
      difficulty =training.by_difficulty(params[:difficulty])
      min = difficulty.by_min(params[:min])
      @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

#4 filters

    elsif !params[:category].blank? && !params[:training_type].blank? && !params[:difficulty].blank? && !params[:min].blank?
      category =Workout.by_category(params[:category])
      training =category.by_training_type(params[:training_type])
      difficulty =training.by_difficulty(params[:difficulty])
      @workouts = difficulty.by_min(params[:min]).order(created_at: :desc).page(params[:page])
      
    elsif !params[:category].blank? && !params[:training_type].blank? && !params[:difficulty].blank? && !params[:max].blank?
      category =Workout.by_category(params[:category])
      training =category.by_training_type(params[:training_type])
      difficulty =training.by_difficulty(params[:difficulty])
      @workouts =difficulty.by_max(params[:max]).order(created_at: :desc).page(params[:page])

    elsif !params[:category].blank? && !params[:training_type].blank? && !params[:min].blank? && !params[:max].blank?
      category =Workout.by_category(params[:category])
      training =category.by_training_type(params[:training_type])
      min = training.by_min(params[:min])
      @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

    elsif !params[:category].blank? && !params[:difficulty].blank? && !params[:min].blank? && !params[:max].blank?
      category =Workout.by_category(params[:category])
      difficulty =category.by_difficulty(params[:difficulty])
      min = difficulty.by_min(params[:min])
      @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

    elsif !params[:training_type].blank? && !params[:difficulty].blank? && !params[:min].blank? && !params[:max].blank?
      training =Workout.by_training_type(params[:training_type])
      difficulty =training.by_difficulty(params[:difficulty])
      min = difficulty.by_min(params[:min])
      @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

#3 filters      
   elsif !params[:category].blank? && !params[:training_type].blank? && !params[:difficulty].blank?
     category =Workout.by_category(params[:category])
     training =category.by_training_type(params[:training_type])
     @workouts =training.by_difficulty(params[:difficulty]).order(created_at: :desc).page(params[:page])

    # Cat Type Min 
   elsif !params[:category].blank? && !params[:training_type].blank? && !params[:min].blank? 
     category =Workout.by_category(params[:category])
     training =category.by_training_type(params[:training_type])
     @workouts = training.by_min(params[:min]).order(created_at: :desc).page(params[:page])
      
   elsif !params[:category].blank? && !params[:training_type].blank? && !params[:max].blank?
     category =Workout.by_category(params[:category])
     training =category.by_training_type(params[:training_type])
     @workouts =trainingmin.by_max(params[:max]).order(created_at: :desc).page(params[:page])

   elsif !params[:category].blank? && !params[:difficulty].blank? && !params[:min].blank? 
     category =Workout.by_category(params[:category])
     difficulty =category.by_difficulty(params[:difficulty])
     @workouts = difficulty.by_min(params[:min]).order(created_at: :desc).page(params[:page])

   elsif !params[:category].blank? && !params[:difficulty].blank? && !params[:max].blank?
     category =Workout.by_category(params[:category])
     difficulty =category.by_difficulty(params[:difficulty])
     @workouts =difficulty.by_max(params[:max]).order(created_at: :desc).page(params[:page])

   elsif !params[:category].blank? && !params[:min].blank? && !params[:max].blank?
     category =Workout.by_category(params[:category])
     min = category.by_min(params[:min])
     @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

#2 filters
    elsif !params[:category].blank? && !params[:training_type].blank?
      category =Workout.by_category(params[:category])
      @workouts =category.by_training_type(params[:training_type])
  
    elsif !params[:category].blank? && !params[:difficulty].blank?
      category =Workout.by_category(params[:category])
      @workouts =category.by_difficulty(params[:difficulty]).order(created_at: :desc).page(params[:page])
  
    elsif !params[:training_type].blank? && !params[:difficulty].blank?
      training =Workout.by_training_type(params[:training_type])
      @workouts =training.by_difficulty(params[:difficulty]).order(created_at: :desc).page(params[:page])

    elsif !params[:category].blank? && !params[:min].blank?
      category =Workout.by_category(params[:category])
      @workouts = category.by_min(params[:min]).order(created_at: :desc).page(params[:page])
      
    elsif !params[:category].blank? && !params[:max].blank?
      category =Workout.by_category(params[:category])
      @workouts =category.by_max(params[:max]).order(created_at: :desc).page(params[:page])
    
    elsif !params[:training_type].blank? && !params[:min].blank?
      training =Workout.by_training_type(params[:training_type])
      @workouts = training.by_min(params[:min]).order(created_at: :desc).page(params[:page])
     
    elsif !params[:training_type].blank? && !params[:max].blank?
      training =Workout.by_training_type(params[:training_type])
      @workouts =training.by_max(params[:max]).order(created_at: :desc).page(params[:page])
     
    elsif !params[:difficulty].blank? && !params[:min].blank?
      difficulty =Workout.by_difficulty(params[:difficulty])
      @workouts = difficulty.by_min(params[:min]).order(created_at: :desc).page(params[:page])
      
    elsif !params[:difficulty].blank? && !params[:max].blank?
      difficulty =Workout.by_difficulty(params[:difficulty])
      @workouts =difficulty.by_max(params[:max]).order(created_at: :desc).page(params[:page])
      
    elsif !params[:min].blank? && !params[:max].blank?
      min = Workout.by_min(params[:min])
      @workouts =min.by_max(params[:max]).order(created_at: :desc).page(params[:page])

#1 filters  
    elsif !params[:category].blank?
      @workouts =Workout.by_category(params[:category]).order(created_at: :desc).page(params[:page])
  
    elsif !params[:training_type].blank?
      @workouts =Workout.by_training_type(params[:training_type]).order(created_at: :desc).page(params[:page])
  
    elsif !params[:difficulty].blank?
      @workouts =Workout.by_difficulty(params[:difficulty]).order(created_at: :desc).page(params[:page])
  
    elsif !params[:min].blank?
      @workouts =Workout.by_min(params[:min]).order(created_at: :desc).page(params[:page])
  
    elsif !params[:max].blank?
      @workouts =Workout.by_max(params[:max]).order(created_at: :desc).page(params[:page])
  
    else
      # if no filters are applied, show all workouts
      @workouts=Workout.order(created_at: :desc).page(params[:page])
    end
  end

  

end
