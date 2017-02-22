require 'rails_helper'

RSpec.describe "ProjectTypes", type: :request do
  describe "GET /project_types" do
    it "works! (now write some real specs)" do
      get project_types_path
      expect(response).to have_http_status(200)
    end
  end
end
