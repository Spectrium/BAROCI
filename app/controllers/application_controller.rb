class ApplicationController < ActionController::Base
     before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:full_name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:full_name, :cin, :age, :email, :password, :current_password)}
  end

#404_page controller
rescue_from ActiveRecord::RecordNotFound, with: :not_found
rescue_from Exception, with: :not_found
rescue_from ActionController::RoutingError, with: :not_found

  def raise_not_found
  raise ActionController::RoutingError.new("No route matches #{params[:unmatched_route]}")
  end

  def not_found
  respond_to do |format|
  format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
  format.xml { head :not_found }
  format.any { head :not_found }
  end
  end

  def error
  respond_to do |format|
  format.html { render :file => "#{Rails.root}/public/500", :layout => false, :status => :error }
  format.xml { head :not_found }
  format.any { head :not_found }
  end
end



end
