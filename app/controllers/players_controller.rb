class PlayersController < ApplicationController
    def index
        players = Player.all
        render json: players
    end

    def create

    end

    def show
        player = Player.find(params[:id])
        render json: player
    end

    def update

    end

    def destroy

    end
end
