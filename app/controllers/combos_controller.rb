class CombosController < ApplicationController
  def index
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
