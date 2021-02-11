class CheckpointSerializer < ActiveModel::Serializer
    attributes :id, :note, :description, :destination_name, :date, :time, :longitude, :latitude, :image


    def image
         url_for(object.image) if object.image.attached?
    end
    
end
  