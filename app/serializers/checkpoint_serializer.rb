class CheckpointSerializer < ActiveModel::Serializer
    attributes :id, :note, :description, :location, :date, :time
end
  