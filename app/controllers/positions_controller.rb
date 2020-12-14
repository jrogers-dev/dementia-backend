class PositionsController < ApplicationController
    def index
        positions = Position.all
        render json: positions
    end

    def create

    end

    def show
        position = Position.find(params[:id])
        render json: position
    end

    def update

    end

    def destroy

    end
end
