class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :store_current_location, :unless => :devise_controller?

  def after_sign_in_path_for(resource)
    # request.env['omniauth.origin'] ||
    stored_location_for(resource) || root_path
  end

  private
  # override the devise helper to store the current location so we can
  # redirect to it after loggin in or out. This override makes signing in
  # and signing up work automatically.
  def store_current_location
    store_location_for(:user, request.url)
  end

  def after_sign_out_path_for(resource)
    request.referrer || root_path
  end

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end

end
