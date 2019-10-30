require 'google/apis/people_v1'
require 'google/api_client/client_secrets.rb'

class ApplicationController < ActionController::Base
  People = Google::Apis::PeopleV1
  def contacts
    secrets = Google::APIClient::ClientSecrets.new(
      {
        "web" =>
          {
            "access_token" => current_user.token,
            "refresh_token" => current_user.refresh_token,
            "client_id" => Rails.application.secrets[:google_client_id],
            "client_secret" => Rails.application.secrets[:google_secret]
          }
      }
    )
    service = People::PeopleServiceService.new
    service.authorization = secrets.to_authorization
    response = service.list_person_connections(
      'people/me',
       person_fields: ['names', 'emailAddresses', 'phoneNumbers']
    )
    render json: response
  end
  
  protect_from_forgery with: :null_session,
      if: Proc.new { |c| c.request.format =~ %r{application/json} }
  before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
  before_action :configure_account_update_params, only: [:update], if: :devise_controller?

  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cargo, :documento, :email, :password])
  end
    
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :cargo, :documento, :email, :password])
  end

end
