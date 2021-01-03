class PlayersController < ApplicationController
    def index
        players = Player.where("game_id = ?", params[:game_id])
        render json: PlayerSerializer.new(players).serializable_hash
    end

    def create
        player = Player.create(player_params)
        render json: PlayerSerializer.new(player).serializable_hash
    end

    def show
        player = Player.find(params[:id])
        if (player.game_id.to_s == params[:game_id])
            render json: PlayerSerializer.new(player).serializable_hash
        else
            redirect_to action: "index", game_id: params[:game_id]
        end
    end

    def update
        player = Player.find(params[:id])
        player.update(player_params)
        render json: PlayerSerializer.new(player).serializable_hash
    end

    def destroy
        Player.destroy(params[:id])
    end

    private

    def player_params
        return params.require(:player).permit(:name, :game_id)
    end
end
