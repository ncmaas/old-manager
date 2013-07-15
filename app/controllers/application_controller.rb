class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #-------- before_filter methods --------
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:remember_me, :username, :password, :password_confirmation, :title, :pref_first_name, :name, :middle_name, :last_name, :suffix, :address_line1, :address_line2, :phone, :whiff, :email, :alternate_email, :college, :major, :yaleyear, :sobclass, :tap_year, :voicepart) }
  end

end
