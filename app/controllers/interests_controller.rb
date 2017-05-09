class InterestsController < ApplicationController
    def index
        @all_interests = Interest.all
        gon.interests = Interest.all
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
        params.require(:interest).permit(:interest_category, :interest)
    end
end
