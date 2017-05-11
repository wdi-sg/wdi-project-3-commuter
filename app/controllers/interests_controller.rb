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
      @interest = Interest.find(params[:id])
      @user = current_user

      @user.interests.delete(@interest)
      redirect_to myinterests_path
    end

    def register
      interest_id = params[:interest_id]
      current_user.interests << Interest.find(interest_id)
      redirect_to myinterests_path

    end

    def display
      @user = User.find(current_user.id)

    end

    private

    def filter_params
        params.require(:interest).permit(:interest_category, :interest)
    end
end
