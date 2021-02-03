class Api::V1::TripsController < ApplicationController
    def index
        trips = Trip.all
        puts trips
        render json: trips
    end
end
