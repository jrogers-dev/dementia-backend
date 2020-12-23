class BoardsController < ApplicationController
    def index
        boards = Board.where("player_id = ?", params[:player_id])
        render json: boards
    end

    def create
        
    end

    def show
        board = Board.find(params[:id])
        if (board.player_id.to_s == params[:player_id])
            render json: board
        else
            redirect_to action: "index", player_id: params[:player_id]
        end
    end

    def update

    end

    def destroy

    end
end
