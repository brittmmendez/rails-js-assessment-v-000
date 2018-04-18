class EquipmentSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :workout

end
