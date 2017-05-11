class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.where(interest_id: current_user)
    puts "=============="
    puts params[:interested_id]
  end

  def create
    @relationship = Relationship.where("interest_id = ? and interested_id = ? ", current_user.id, user_params['user']).or Relationship.where("interest_id = ? and interested_id = ? ", user_params['user'], current_user.id)

    puts "HAHA #{user_params['user']}"

    if @relationship.size > 0
      redirect_to matches_path
    else
    @relationship = Relationship.new()
    @relationship.interest_id = current_user.id
    @relationship.interested_id = user_params['user']

    if @relationship.save!
      redirect_to matches_path
    else
      redirect_to commuters_path
    end
  end
  end

  def destroy
    @relationship = Relationship.where("interest_id = ? and interested_id = ? ", current_user.id, params[:id]).or Relationship.where("interest_id = ? and interested_id = ? ", params[:id], current_user.id)
    @relationship[0].destroy

    redirect_to matches_path
  end



  private

  def user_params
    params.require(:Relationship).permit(:user)
  end
end
