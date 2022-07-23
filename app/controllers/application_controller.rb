class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }

  before_action :update_allowed_parameters, if: :devise_controller?

  def token(user_id)
    JWT.encode({ user_id: user_id }, Rails.application.secrets.secret_key_base)
  end

  def client_has_valid_token?
    !!current_user_id
  end

  def current_user_id
    decoded_token = JWT.decode(request.headers['Authorization'].split.last, Rails.application.secrets.secret_key_base)
    decoded_token.first['user_id']
  rescue JWT::DecodeError
    nil
  end

  def require_login
    render json: { error: 'Unauthorized' }, status: :unauthorized unless client_has_valid_token?
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password) }
  end
end
