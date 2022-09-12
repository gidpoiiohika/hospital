class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:phone_number, :first_name, :last_name, :password, :password_confirmation, :email]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  private

  def current_ability
    if current_doctor.present?
      @current_ability ||= DoctorAbility.new(current_doctor)
    elsif current_patient.present?
      @current_ability ||= PatientAbility.new(current_patient)
    else
      @current_ability ||= AdminAbility.new(current_admin_user) 
    end
  end
end
