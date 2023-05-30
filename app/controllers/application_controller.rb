class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    stored_location = session[:return_to]
    session.delete(:return_to)
      stored_location || home_index_path
      stored_location_for(resource) || home_index_path
    end
    before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :store_user_location!, if: :storable_location?


    # def render_error(exception)
    #    logger.error(exception) # Log the exception
    #
    #    # Render an error template with a user-friendly message
    #    render file: "#{Rails.root}/public/500.html", status: :internal_server_error
    #  end
    protected

    def configure_permitted_parameters
      attributes = [:profile,:name,:designation,:noofconfession,:noofblog]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end
end
