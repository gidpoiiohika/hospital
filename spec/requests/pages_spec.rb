require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/pages/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /profile_doctor" do
    it "returns http success" do
      get "/pages/profile_doctor"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /profile_patient" do
    it "returns http success" do
      get "/pages/profile_patient"
      expect(response).to have_http_status(:success)
    end
  end

end
