class TravelsController < ApplicationController

  def index
    @all_travels = Travel.all
    gon.travels = Travel.all
  end

  def show
    # find travel by id
    @individual_travel = Travel.find(params[:id])
    # pass the data into your js
    gon.travel = Travel.find(params[:id])
    # alert the data into the screen
  end


  def edit
    # find flight by id
    @individual_travel = Travel.find(params[:id])
  end

  def new
    # find flight by id
    @new_travel = Travel.new

  end

  def create
    @submitted_travel = params[:travel]
    #rails console way
    # @save_travel = Travel.new
    # @save_travel.from = @submitted_travel[:from]
    # @save_travel.to = @submitted_travel[:to]

    #mass assignment way
    @submitted_travel = Travel.new(filter_params)
    @submitted_travel.user_id = current_user.id
    @submitted_travel.save
    redirect_to profile_path
  end

  #url: /flight/:id/edit put request
  def update
    @updated_travel = Travel.find(params[:id])
    if @updated_travel.update(filter_params)
      redirect_to root_path
    end

    # @updated_travel.save_travel
    # redirect_to travel_path(@updated_travel)
  end

  def destroy
    @deleted_travel = Travel.find(params[:id])
    @deleted_travel.destroy
    redirect_to root_path
  end

  private

  def filter_params
    params.require(:travel).permit(:start_route, :end_route, :timeslot, :mrt_line)
  end
end
