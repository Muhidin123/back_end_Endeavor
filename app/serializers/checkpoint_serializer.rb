class CheckpointSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :note, :description, :destination_name, :date, :latitude_delta, :longitude_delta, :longitude, :latitude, :image


    def image
         url_for(object.picture) if object.picture.attached?
    end
end
  