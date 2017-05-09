class HomeController < ApplicationController
  def index
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  def show
    @conversation = Conversation.find_by(sender_id: current_user.id, recipient_id: params[:id])
    puts "========"
    puts @conversation
  end
end
