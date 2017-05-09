class CombosController < ApplicationController
  before_action :authenticate_user!, except: [:index]
    def index
      if(params[:interest_id])
        @all_combos = Combo.find(params[:interest_id])
      else
          @all_combos = Combo.all
          gon.interests = Combo.all
      end
    end

    def show
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
