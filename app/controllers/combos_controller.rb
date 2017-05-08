class CombosController < ApplicationController
    def index
        if params[:interest_id] && Combo.all.collect(&:interest_id).include?(params[:interest_id])
            @all_combos = Combo.send(params[:interest_id])
        else
            @all_combos = Combo.all
            gon.interests = Combo.all
        end
    end

    def show
      @all_combos = Combo.all
      gon.combos = Combo.all
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
