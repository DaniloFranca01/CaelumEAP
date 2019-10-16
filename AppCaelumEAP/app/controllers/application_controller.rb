class ApplicationController < ActionController::Base
  
  before_action :configure_sign_up_params, only: [:create], if: :devise_controller?

  before_action :configure_account_update_params, only: [:update], if: :devise_controller?


  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cargo, :documento, :email, :password])
  end
    
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :cargo, :documento, :email, :password])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

end
