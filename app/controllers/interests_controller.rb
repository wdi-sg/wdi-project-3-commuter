class InterestsController < ApplicationController
    def index
        @all_interests = Interest.all
        gon.interests = Interest.all
        @users = User.all
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

    def register
      interest_id = params[:interest_id]
      current_user.interests << Interest.find(interest_id)
      redirect_to commuters_path
    end

    private

    def filter_params
        params.require(:interest).permit(:interest_category, :interest)
    end
end
