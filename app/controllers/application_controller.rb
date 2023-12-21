class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :surname, :address, :phone, :avatar, :next_of_kin, :next_of_kin_phone, :date_of_birth, :admin])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :surname, :address, :phone, :avatar, :next_of_kin, :next_of_kin_phone, :date_of_birth, :admin])
    end
end
