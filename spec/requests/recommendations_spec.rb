require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/recommendations", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Recommendation. As you add validations to Recommendation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Recommendation.create! valid_attributes
      get recommendations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      recommendation = Recommendation.create! valid_attributes
      get recommendation_url(recommendation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_recommendation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      recommendation = Recommendation.create! valid_attributes
      get edit_recommendation_url(recommendation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Recommendation" do
        expect {
          post recommendations_url, params: { recommendation: valid_attributes }
        }.to change(Recommendation, :count).by(1)
      end

      it "redirects to the created recommendation" do
        post recommendations_url, params: { recommendation: valid_attributes }
        expect(response).to redirect_to(recommendation_url(Recommendation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Recommendation" do
        expect {
          post recommendations_url, params: { recommendation: invalid_attributes }
        }.to change(Recommendation, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post recommendations_url, params: { recommendation: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested recommendation" do
        recommendation = Recommendation.create! valid_attributes
        patch recommendation_url(recommendation), params: { recommendation: new_attributes }
        recommendation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the recommendation" do
        recommendation = Recommendation.create! valid_attributes
        patch recommendation_url(recommendation), params: { recommendation: new_attributes }
        recommendation.reload
        expect(response).to redirect_to(recommendation_url(recommendation))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        recommendation = Recommendation.create! valid_attributes
        patch recommendation_url(recommendation), params: { recommendation: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested recommendation" do
      recommendation = Recommendation.create! valid_attributes
      expect {
        delete recommendation_url(recommendation)
      }.to change(Recommendation, :count).by(-1)
    end

    it "redirects to the recommendations list" do
      recommendation = Recommendation.create! valid_attributes
      delete recommendation_url(recommendation)
      expect(response).to redirect_to(recommendations_url)
    end
  end
end