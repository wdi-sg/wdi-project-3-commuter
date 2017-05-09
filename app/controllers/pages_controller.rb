class PagesController < ApplicationController
    def home
      end

    def about
    end

    def view_commuters
      redirect_to "http://localhost:3000/combos/show"
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
