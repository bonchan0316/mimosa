class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  after_action :store_location

  protected
    def configure_permitted_parameters
      added_attrs = [ :user_name, :email, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end

  def store_location
    if request.fullpath.in?( [new_user_registration_path, new_user_session_path] ) ||
      request.fullpath =~ Regexp.new("\\A/users/password.*\\z") ||
      request.xhr?
      return
    end
    session[:previous_url] = request.fullpath
  end

  def after_sign_in_path_for(resource)
    if (session[:previous_url] == root_path)
      super
    else
      session[:previous_url] || root_path
    end
  end

end
