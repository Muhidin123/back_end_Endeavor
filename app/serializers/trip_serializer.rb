class TripSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :title, :destination_name, :start, :end, :note, :image, :checkpoints
                           
    # belongs_to :user
    has_many :checkpoints

    def image
      url_for(object.image) if object.image.attached?
    end

end
  