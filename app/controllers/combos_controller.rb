class CombosController < ApplicationController
    def index
      @all_combos = Combo.all
      gon.interests = Combo.all
    end

    def show
      if(params[:interest_id])
        @all_combos = Combo.find(params[:interest_id])
      #     puts "=============================================="
      #     puts @all_combos
      # # if params[:interests_id] Combo.all.collect(&:interest).include?(params[:interests_id])
      #     # @all_combos = Combo.send(params[:interest_id])
      else
          @all_combos = Combo.all
          gon.interests = Combo.all
      end
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
