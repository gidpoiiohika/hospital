class PagesController < ApplicationController
  def home
    if current_admin_user.present?
      render 'pages/home'
    elsif current_doctor.present?
      redirect_to appointments_path
    elsif current_patient.present?
      redirect_to categories_path
    else
      render 'pages/home'
    end
  end

  def profile_doctor
    if current_admin_user.present?
      render 'pages/home'
    elsif current_doctor.present?
      @doctor = Doctor.find(params[:id])
    elsif current_patient.present?
      redirect_to categories_path
    else
      render 'pages/home'
    end
  end

  def profile_patient
    if current_admin_user.present?
      render 'pages/home'
    elsif current_doctor.present?
      redirect_to appointments_path
    elsif current_patient.present?
      @patient = Patient.find(params[:id])
    else
      render 'pages/home'
    end
  end
end
