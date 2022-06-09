class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_event_path(current_user.event_id) # Or :prefix_to_your_route
  end
end
