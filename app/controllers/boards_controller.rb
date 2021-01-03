class BoardsController < ApplicationController
    def index
        boards = Board.where("player_id = ?", params[:player_id])
        render json: BoardSerializer.new(boards).serializable_hash
    end

    def create
        board = Board.create(board_params)
        render json: BoardSerializer.new(board).serializable_hash
    end

    def show
        board = Board.find(params[:id])
        if (board.player_id.to_s == params[:player_id])
            render json: BoardSerializer.new(board).serializable_hash
        else
            redirect_to action: "index", player_id: params[:player_id]
        end
    end

    def update
        board = Board.find(params[:id])
        board.update(board_params)
        render json: BoardSerializer.new(board).serializable_hash
    end

    def destroy
        Board.destroy(params[:id])
    end

    private

    def board_params
        params.require(:board).permit(:clear, :rotation, :player_id)
    end
end
