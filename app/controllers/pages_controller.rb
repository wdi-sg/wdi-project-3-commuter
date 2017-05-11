class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :login, :signup, :combos, :view_commuters]
    def home
    end

    def about
    end

    def search
      if(interest_params)
        #  @interests = params[:interests_category]
        #  @interests.each do |each_interest|
           @interest_some = Interest.includes(:users).find(interest_params['interest']).users
          #  end
           @users = @interest_some
           @travel = Travel.all
       else
           @users = User.all
           @travel = Travel.all
       end
      render "view_commuters"
    end

    def view_commuters
      #
      # puts "BACK END #{interest_params.inspect} #{interest_params[1]}"

      #  if(interest_params[1])
      #    @interests = params[:interests_category]
      #    @interests.each do |each_interest|
      #      @interest_some = Interest.includes(:users).find(each_interest).users
      #      end
      #      @users = @interest_some
      #      @travel = Travel.all
      #  else
           @users = User.all
           @travel = Travel.all
      #  end
     end

    def contact_us
    end

    def profile
    end

    def dashboard
    end

    def matches
      @relationships = Relationship.where(interest_id: current_user)
    end

    def combos
    end

    def login
    end

    def signup
    end

    private

    def interest_params
      params.require(:interest).permit(:interest)
    end
end
