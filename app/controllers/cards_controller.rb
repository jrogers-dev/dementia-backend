class CardsController < ApplicationController
    def index
        cards = Card.all
        render json: cards
    end

    def create

    end

    def show
        card = Card.find(params[:id])
        render json: card
    end

    def update

    end

    def destroy

    end
end
