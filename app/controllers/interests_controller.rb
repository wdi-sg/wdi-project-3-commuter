class InterestsController < ApplicationController

  def index
    @all_interests = Interest.all
    gon.interests = Interest.all
  end

  def show
    # find interest by id
    @individual_interest = Interest.find(params[:id])
    # pass the data into your js
    gon.interest = Interest.find(params[:id])
    # alert the data into the screen
  end


  def edit
    # find interest by id
    @individual_interest = Interest.find(params[:id])
  end

  def new
    # find interest by id
    @new_interest = Interest.new

  end

  def create
    @submitted_interest = params[:interest]

    @submitted_interest = Interest.new(filter_params)
    @submitted_interest.save
    redirect_to profile_path
  end

  #url: /interest/:id/edit put request
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

  #
  def filter_params
    params.require(:interest).permit(:interest_category, :interest)
  end
end
