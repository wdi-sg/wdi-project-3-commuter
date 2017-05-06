class InterestsController < ApplicationController
  def index
    @all_interests = Interest.all
    gon.interests = Interest.all
  end

  def show
    @individual_interest = Interest.find(params[:id])
    gon.interest = Interest.find(params[:id])
  end

  def edit
    @individual_interest = Interest.find(params[:id])
  end

  def new
    @new_interest = Interest.new
  end

  def create
    @submitted_interest = params[:interest]
    @submitted_interest = Interest.new(filter_params)
    @submitted_interest.save
    redirect_to profile_path
  end

  def update
    @updated_interest = Interest.find(params[:id])
    if @updated_interest.update(filter_params)
      redirect_to root_path
    end
  end

  def destroy
    @deleted_interest = Interest.find(params[:id])
    @deleted_interest.destroy
    redirect_to root_path
  end

  private

  def filter_params
    params.require(:interest).permit(:category, :description)
  end


end
