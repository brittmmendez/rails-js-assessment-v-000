class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :difficulty, :description, :training_type, :category, :website, :photo, :views, :category_id, :user_id, :training_type_id

  
  # #DIY Serializer:
  # def self.serialize(workout)
  #   # start with the open brace to create a valid JSON object
  #   serialized_workout = '{'

  #   serialized_workout += '"id": ' + workout.id.to_s + ', '
  #   serialized_workout += '"name": "' + workout.name + '", '
  #   serialized_workout += '"duration": "' + workout.duration.to_s + '", '
  #   serialized_workout += '"difficulty": "' + workout.difficulty + '", '
  #   serialized_workout += '"description": "' + workout.description.to_s + '", '
  #   serialized_workout += '"training_type": "' + workout.training_type.name + '", '
  #   serialized_workout += '"website": "' + workout.website + '", '
  #   serialized_workout += '"photo": "' + workout.photo + '", '
  #   serialized_workout += '"views": "' + workout.views.to_s + '", '
  #   serialized_workout += '"category_id": "' + workout.category.name + '", '
  #   serialized_workout += '"equipment": "' + workout.equipments.map{|e| e.name}.join(",") + '", '
    
  #   # the author association can also be represented in JSON
  #   serialized_workout += '"user": {'
  #   serialized_workout += '"user_id": "' + workout.user_id.to_s + '", '
  #   serialized_workout += '"email": "' + workout.user.email + '"}'

  #   # and end with the close brace
  #   serialized_workout += '}'
  # end
end