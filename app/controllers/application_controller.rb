class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :setup_language

  def setup_language
    unless cookies[:language]
      cookies[:language] = {
      value: (request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first),
      httponly: true,}
    end
    I18n.locale = cookies[:language] || 'en'
  end
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
  end
end
