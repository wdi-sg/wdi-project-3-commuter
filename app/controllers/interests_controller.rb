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
<<<<<<< HEAD
=======

    end

    def display
      @user = User.find(current_user.id)
      @interest = @user.interests.select("interest", "interest_category")

>>>>>>> 30674d367da8237d00fa57ee27cb12191cc2d981
    end

    private

    def filter_params
        params.require(:interest).permit(:interest_category, :interest)
    end
end
