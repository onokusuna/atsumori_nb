require 'rails_helper'

RSpec.describe "Turnips", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/turnips/index"
      expect(response).to have_http_status(:success)
    end
  end

end
