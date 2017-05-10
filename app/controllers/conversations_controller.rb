class ConversationsController < ApplicationController
  def create
    puts recipient_params.inspect
    puts recipient_params["recipient"]
    puts "Current #{current_user.id}"
    puts "Recipent id #{recipient_params["recipient"]}"
    @conversation = Conversation.where("sender_id = ? and recipient_id = ?", current_user.id, recipient_params["recipient"]).or (Conversation.where("recipient_id = ? and sender_id = ?", current_user.id, recipient_params["recipient"]))


    # Conversation.find_by(sender_id: current_user.id, recipient_id: recipient_params["recipient"]) || Conversation.find_by(recipient_id: current_user.id, sender_id: recipient_params["recipient"])

    # puts @conversation.inspect
    # puts @conversation.first.id

    if @conversation.size > 0
      redirect_to conversation_path(@conversation.first.id)
    else
       @conversation = Conversation.new()
       @conversation.recipient_id = recipient_params["recipient"]
       @conversation.sender_id = current_user.id
       if @conversation.save!
         redirect_to conversation_path(@conversation.id)
       else
         redirect_to matches_path
       end
    end

    

    # @conversation = Conversation.new()
    # @conversation.recipient_id =
    # @conversation.sender_is = current_user.id
    # @conversation = Conversation.get(current_user.id, params[:user_id])

    # add_to_conversations unless conversated?
    #
    # respond_to do |format|
    #   format.js
    # end
  end

  def show
    # find conversation with sender id =- current user id and recipient id = params[:id]
    @conversation = Conversation.find_by_id(params[:id])
    puts "Show #{@conversation}"

    # puts "========"
    # puts @conversation
    # if !@conversation
    #   @recipient_id = params[:id]
    #   @conversation = Conversation.new()
    #   @conversation.sender_id = current_user.id
    #   @conversation.recipient_id = params[:id]
    #   @conversation.save

      #
      # @conversation = Conversation.find(params[:id])
      # render 'conversation'
  end

  def close
    @conversation = Conversation.find(params[:id])

    session[:conversations].delete(@conversation.id)

    redirect_to chats_path
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end

  def recipient_params
    params.require(:conversation).permit(:recipient)
  end
end
