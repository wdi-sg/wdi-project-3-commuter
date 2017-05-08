class CombosController < ApplicationController
    def index
        if params[:interest] && Combo.all.collect(&:interest).include?(params[:area][:interest])
            @all_interests = Combo.send(params[:area][:interest].downcase)
        else
            @all_interests = Combo.all
            gon.interests = Combo.all
        end
    end

    def show
        # find interest by id
        @individual_interest = Combo.find(params[:id])
        # pass the data into your js
        gon.interest = Combo.find(params[:id])
        # alert the data into the screen
    end

    def edit
    end

    def new
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def filter_params
        params.require(:combo).permit(:user_id, :travel_id, :interest_id)
    end
end
