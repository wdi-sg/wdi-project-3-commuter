class PagesController < ApplicationController
    def home
      end

    def about
    end

    def view_commuters
      @users = User.all
      @travel = Travel.all

    end

    def contact_us
    end

    def profile
    end

    def dashboard
    end

    def matches
    end

    def combos
    end

    def login
    end

    def signup
    end
end
