require 'rails_helper'

RSpec.describe "Calcs", type: :request do
  describe "GET /input" do
    it "returns http success" do
      get "/calc/input"
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /output" do
    it "returns http success" do
      get "/calc/output"
      expect(response).to have_http_status(:success)
    end
  end

end
