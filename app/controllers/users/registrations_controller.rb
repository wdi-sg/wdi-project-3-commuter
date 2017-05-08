class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super
    @user.first_name = configure_sign_up_params[:first_name]
    @user.last_name = configure_sign_up_params[:last_name]
    @user.address = configure_sign_up_params[:address]
    @user.personal_description = configure_sign_up_params[:personal_description]
    @user.avatar = configure_sign_up_params[:avatar]
    @user.save

  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    super
    @user.first_name = configure_sign_up_params[:first_name]
    @user.last_name = configure_sign_up_params[:last_name]
    @user.address = configure_sign_up_params[:address]
    @user.personal_description = configure_sign_up_params[:personal_description]
    @user.avatar = configure_sign_up_params[:avatar]
    @user.save
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    params.require(:user).permit(:first_name, :last_name, :address, :personal_description, :email, :password, :password_confirmation, :avatar)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
