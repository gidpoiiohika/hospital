require 'rails_helper'

RSpec.describe "ProfileDoctors", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/profile_doctors/home"
      expect(response).to have_http_status(:success)
    end
  end

end
