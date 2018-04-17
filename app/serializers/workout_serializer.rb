class WorkoutSerializer 
  
  def self.serialize(workout)
    # start with the open brace to create a valid JSON object
    serialized_workout = '{'

    serialized_workout += '"id": ' + workout.id.to_s + ', '
    serialized_workout += '"name": "' + workout.name + '", '
    serialized_workout += '"duration": "' + workout.duration.to_s + '", '
    serialized_workout += '"difficulty": "' + workout.difficulty + '", '
    serialized_workout += '"training_type": "' + workout.training_type.to_s + '", '
    serialized_workout += '"website": "' + workout.website + '", '
    serialized_workout += '"photo": "' + workout.photo + '", '
    serialized_workout += '"views": "' + workout.views.to_s + '", '
    serialized_workout += '"category_id": "' + workout.category_id.to_s + '", '
    serialized_workout += '"user_id": "' + workout.user_id.to_s + '", '
    serialized_workout += '"training_type_id": "' + workout.training_type_id.to_s + '", '

    # the author association can also be represented in JSON
    serialized_workout += '"user": {'
    serialized_workout += '"email": "' + workout.user.email + '"}'

    # and end with the close brace
    serialized_workout += '}'
  end
end