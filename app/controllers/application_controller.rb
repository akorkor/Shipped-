class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_current_page
  before_filter :configure_permitted_parameters, if: :devise_controller?
	before_filter :authenticate_user!

  def get_current_page
    @root = "/"
    @current_page = request.original_url
    puts " ** @root: #{@root}"
    puts " ** @current_page: #{@current_page}"
    puts " ** request.original_url: #{request.original_url}"
  end

	protected
  	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up) {
  			|u| u.permit({ roles: [] }, :fname, :lname, :username, :email, :password,
  				:password_confirmation)
  		}
  	end
end
