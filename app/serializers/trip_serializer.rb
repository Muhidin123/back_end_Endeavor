class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :note, :destination_name
end
