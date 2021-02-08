class Api::V1::CheckpointsController < ApplicationController
    def index
        checkpoint = Checkpoint.all

        render json: checkpoint
    end 
end
