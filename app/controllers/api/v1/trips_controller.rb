class Api::V1::TripsController < ApplicationController
    def index
        trips = Trip.all
        puts trips
        render json: trips
    end

    def show
      trip = Trip.find(params[:id ])
    
      render json: trip
    end

    def create
        trip = Trip.new(trip_params)
        image_io ? trip.image.attach(io: image_io, filename: image_name) : trip.image.attach(io: File.open(Rails.root.join('no_image_default.png')), filename: 'default-image.png', content_type: 'image/
        png')
        if trip.save
          render json: trip
        else
          render json: {error: "DID NOT SAVE"}
        end
    end

    private
  
    def trip_params
      params.require(:trip).permit(:title, :destination_name, :longitude, :latitude, :user_id, :public, :note, :start, :end, :image, :latitude_delta, :longitude_delta,)
    end

    def image_io
      if params[:trip][:image]
        decoded_image = Base64.decode64(params[:trip][:image])
        return StringIO.new(decoded_image)
      end
      nil
    end

    def image_name
      params[:trip][:file_name]
    end
    
end
