class ApplicationController < ActionController::Base
  private
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_portuser!, except: [:index]

  def after_sign_in_path_for(portuser)
      :authenticated
  end
  def after_sign_out_path_for(portuser)
      :unauthenticated_root
  end
    
end
