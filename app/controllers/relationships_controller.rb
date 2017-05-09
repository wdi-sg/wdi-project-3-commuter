class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.where(interest_id: current_user)
    puts "=============="
    puts params[:interested_id]
  end

  def create
    puts "HAHA #{user_params['user']}"
    @relationship = Relationship.new()
    @relationship.interest_id = current_user.id
    @relationship.interested_id = user_params['user']

    if @relationship.save!
      redirect_to matches_path
    else
      redirect_to commuters_path
    end
  end


  private

  def user_params
    params.require(:Relationship).permit(:user)
  end
end
