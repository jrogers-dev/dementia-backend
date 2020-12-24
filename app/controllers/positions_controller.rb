class PositionsController < ApplicationController
    def index
        positions = Position.where("board_id = ?", params[:board_id])
        render json: PositionSerializer.new(positions).serializable_hash
    end

    def create

    end

    def show
        position = Position.find(params[:id])
        if (position.board_id.to_s == params[:board_id])
            render json: position
        else
            redirect_to action: "index", board_id: params[:board_id]
        end
    end

    def update

    end

    def destroy

    end
end
