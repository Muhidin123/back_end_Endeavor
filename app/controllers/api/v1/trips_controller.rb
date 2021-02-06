class Api::V1::TripsController < ApplicationController
    def index
        trips = Trip.all
        puts trips
        render json: trips
    end

    def create
        trip = Trip.create(trip_params)
        render json: trip 
    end

    private
      def trip_params
        params.require(:trip).permit(:title, :destination_name, :longitude, :latitude, :user_id, :public, :note, :start, :end)
      end
end
