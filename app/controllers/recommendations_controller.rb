  class RecommendationsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @recommendations = current_patient.recommendations
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)

    respond_to do |format|
      if @recommendation.save
        appointment = Appointment.find_by(id: params["recommendation"]["appointment_id"])
        appointment.status = 1
        appointment.save
        
        format.html { redirect_to appointments_path, notice: "Рекомендація була успішно створена." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:doctor_id, :patient_id, :title)
  end
end
