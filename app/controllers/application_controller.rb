class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      capsules_path
    else
      new_user_session_path
    end
  end
end
