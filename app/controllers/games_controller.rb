class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).serializable_hash
    end

    def create
        game = Game.create(game_params)
        render json: GameSerializer.new(game).serializable_hash
    end

    def show
        game = Game.find(params[:id])
        render json: GameSerializer.new(game).serializable_hash
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        render json: GameSerializer.new(game).serializable_hash
    end

    def destroy
        Game.destroy(params[:id])
    end

    private

    def game_params
        params.require(:game).permit(:state)
    end
end
