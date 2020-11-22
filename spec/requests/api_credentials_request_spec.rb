require 'rails_helper'

RSpec.describe "ApiCredentials", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api_credentials/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api_credentials/update"
      expect(response).to have_http_status(:success)
    end
  end

end
