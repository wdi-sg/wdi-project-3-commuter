class InterestsController < ApplicationController
    def index
        if params[:interest] && Interest.all.collect(&:interest).include?(params[:area][:interest])
            @all_interests = Interest.send(params[:area][:interest].downcase)
        else
            @all_interests = Interest.all
            gon.interests = Interest.all
        end
    end

    def show
        @individual_interest = Interest.find(params[:id])
        gon.interest = Interest.find(params[:id])
    end

    def edit
        @individual_interest = Interest.find(params[:id])
        gon.interest = Interest.find(params[:id])
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
        # url: /interest/:id/edit put request
        @updated_interest = Interest.find(params[:id])
        redirect_to root_path
        if @updated_interest.update(filter_params)
        end
    end

    def destroy
        @deleted_interest = Interest.find(params[:id])
        @deleted_interest.destroy
        redirect_to root_path
    end

    private

    def filter_params
       params.require(:interest).permit(:interest_category, :interest)
    end
end
