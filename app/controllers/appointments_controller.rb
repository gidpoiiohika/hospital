class AppointmentsController < ApplicationController
  # load_and_authorize_resource

  def index
    @appointments = Appointment.all.order(:status)
  end

  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to categories_path(), notice: "Ви записалися на прийом до лікаря #{@appointment.doctor.first_name}" }
      else
        format.html { redirect_to categories_path(), notice: "limit" }
      end
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :status)
  end
end
