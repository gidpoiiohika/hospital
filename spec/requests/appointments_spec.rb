require 'rails_helper'

RSpec.describe "/appointments", type: :request do
  describe "POST /create" do
    let(:patient) { create(:patient)}
    let(:doctor) { create(:doctor)}
    before(:each) do
      sign_in patient
    end
    context "with valid parameters" do
      it "creates a new Appointment" do
        expect {
          post appointments_url, params: { appointment: { patient_id: patient.id, doctor_id: doctor.id, status: "open" } }
        }.to change(Appointment, :count).by(1)
      end

      it "redirects to the created appointment" do
        post appointments_url, params: { appointment: { patient_id: patient.id, doctor_id: doctor.id, status: "open" } }
        expect(response).to redirect_to(categories_path)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Appointment" do
        expect {
          post appointments_url, params: { appointment: { patient_id: nil, doctor_id: doctor.id, status: "open" } }
        }.to change(Appointment, :count).by(0)
      end
    end
  end
end
