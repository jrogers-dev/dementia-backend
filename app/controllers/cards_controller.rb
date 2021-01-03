class CardsController < ApplicationController
    def index
        cards = Card.all
        render json: CardSerializer.new(cards).serializable_hash
    end

    def create
        card = Card.create(card_params)
        render json: CardSerializer.new(card).serializable_hash
    end

    def show
        card = Card.find(params[:id])
        if (card.position_id.to_s == params[:position_id])
            render json: CardSerializer.new(card).serializable_hash
        else
            redirect_to action: "index", position_id: params[:position_id]
        end
    end

    def update
        card = Card.find(params[:id])
        card.update(card_params)
        render json: CardSerializer.new(card).serializable_hash
    end

    def destroy
        Card.destroy(params[:id])
    end

    private

    def card_params
        params.require(:card).permit(:position_id, :value)
    end
end
