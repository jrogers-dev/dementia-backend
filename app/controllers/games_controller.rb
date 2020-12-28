class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).serializable_hash
    end

    def create
        game = Game.create(state: :created)
        render json: GameSerializer.new(game).serializable_hash
    end

    def show
        game = Game.find(params[:id])
        render json: GameSerializer.new(game).serializable_hash
    end

    def update

    end

    def destroy
        Game.destroy(params[:id])
    end

    private

    def set_game

    end

    def game_params

    end
end
