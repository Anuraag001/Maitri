class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    stored_location = session[:return_to]
    session.delete(:return_to)
      stored_location || home_index_path
      stored_location_for(resource) || home_index_path
    end

end
