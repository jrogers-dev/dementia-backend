class PositionsController < ApplicationController
    def index
        positions = Position.where("board_id = ?", params[:board_id])
        render json: PositionSerializer.new(positions).serializable_hash
    end

    def create
        position = Position.create(position_params)
        render json: PositionSerializer.new(position).serializable_hash
    end

    def show
        position = Position.find(params[:id])
        if (position.board_id.to_s == params[:board_id])
            render json: PositionSerializer.new(position).serializable_hash
        else
            redirect_to action: "index", board_id: params[:board_id]
        end
    end

    def update
        position = Position.find(params[:id])
        position.update(position_params)
        render json: PositionSerializer.new(position).serializable_hash
    end

    def destroy
        Position.destroy(params[:id])
    end

    private
    
    def position_params
        params.require(:position).permit(:board_id)
    end
end
