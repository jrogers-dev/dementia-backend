class BoardsController < ApplicationController
    def index
        boards = Board.all
        render json: boards
    end

    def create

    end

    def show
        board = Board.find(params[:id])
        render json: board
    end

    def update

    end

    def destroy

    end
end
