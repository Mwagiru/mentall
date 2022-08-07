class MentalItemsController < ApplicationController
    def index
        mentalitems = MentalItem.all
        render json: mentalitems, status: :ok
    end

    def show
        mentalitem = find_mental_items
        render json: mentalitem, status: :ok
    end

    def update
        mentalitem = find_mental_items
        mentalitem.update!(yoga_params)
        render json: mentalitem, status: :ok
    end

    private
    def find_mental_items
        MentalItem.find(params[:id])
    end

    def mental_params
        params.permit(:is_favorited)
    end

end
