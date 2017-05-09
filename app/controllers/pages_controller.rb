class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :login, :signup, :combos, :view_commuters]
    def home
    end

    def about
    end

    def view_commuters
      redirect_to combos_path
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
