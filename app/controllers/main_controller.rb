class MainController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if user_signed_in?
      redirect_to restaurants_path
    end
  end

  def change_spanish
    set_language_cookie('es')
    redirect_back(fallback_location: root_path)
  end

  def change_english
    set_language_cookie('en')
    redirect_back(fallback_location: root_path)
  end

  private

  def set_language_cookie(language)
    cookies[:language] = {
      value: language,
      httponly: true,
    }
  end
end
