class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :login, :signup, :combos, :view_commuters]
    def home
    end

    def about
    end

    def view_commuters
        if(params[:timeslot])
          # @travel = Travel.where(timeslot: params[:timeslot])
          # combos = []
          # @travel.each do |travel_each|
          #   @temp = Combo.where(travel_id: travel_each.id)
          #   @temp.each do |each_temp|
          #     combos.push(each_temp)
          #   end
          # end
          # @all_combos = combos
        elsif (params[:mrt_line])
            # @travel = Travel.where(mrt_line: params[:mrt_line])
            # combos = []
            # @travel.each do |travel_each|
            #   @temp = Combo.where(travel_id: travel_each.id)
            #   @temp.each do |each_temp|
            #     combos.push(each_temp)
            #   end
            # end
            # @all_combos = combos
        elsif(params[:interests_category])
          @interests = params[:interests_category]
              # @interest_some = Interest.first.users
              # puts @interest_some.inspect
          @interests.each do |each_interest|
            @interest_some = Interest.includes(:users).find(each_interest).users
            puts "here"
            puts @interest_some.inspect
            # puts @interest_some.users[0]
            puts "======================="
            # @interest_some.each do |each|
            #   puts "user is"
            #   puts each
            end
            @users = @interest_some
            @travel = Travel.all
        else
            @users = User.all
            @travel = Travel.all
        end
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
end
