class ApplicationController < ActionController::Base
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
