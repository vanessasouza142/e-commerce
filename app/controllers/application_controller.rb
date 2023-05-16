class ApplicationController < ActionController::Base
    
 # layout :layout_by_resource

  #  private

   # def layout_by_resource
    #    if devise_controller?
     #       "devise"
      #  else
       #     "application"
       # end
  #  end

    # before_action :authenticate_user!

 #   include Devise::Controllers::Helpers



    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:name, :phone, :email, :password, :password_confirmation)
      end
    end

    def after_sign_in_path_for(resource)
      if resource.is_a?(User) && resource.admin?
        admin_root_path
      else
        root_path
      end
    end

end
