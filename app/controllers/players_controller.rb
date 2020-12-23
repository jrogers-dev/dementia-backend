class PlayersController < ApplicationController
    def index
        players = Player.where("game_id = ?", params[:game_id])
        render json: players, only: [:id, :name]
    end

    def create

    end

    def show
        player = Player.find(params[:id])
        if (player.game_id.to_s == params[:game_id])
            render json: player, only: [:id, :name, :game_id]
        else
            redirect_to action: "index", game_id: params[:game_id]
        end
    end

    def update

    end

    def destroy

    end
end
