class CombosController < ApplicationController
    def index
      @all_combos = Combo.all
      gon.interests = Combo.all
    end

    def show
      if(params[:timeslot])
        @travel = Travel.where(timeslot: params[:timeslot])
        combos = []
        @travel.each do |travel_each|
          @temp = Combo.where(travel_id: travel_each.id)
          @temp.each do |each_temp|
            combos.push(each_temp)
          end
        end
        @all_combos = combos
      elsif (params[:mrt_line])
          @travel = Travel.where(mrt_line: params[:mrt_line])
          combos = []
          @travel.each do |travel_each|
            @temp = Combo.where(travel_id: travel_each.id)
            @temp.each do |each_temp|
              combos.push(each_temp)
            end
          end
          @all_combos = combos
      elsif(params[:interest_id])
        @all_combos = Combo.where(interest_id: params[:interest_id])
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
