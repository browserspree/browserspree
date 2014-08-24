require "rails_helper"
describe Spree::ProductsController do
  before(:each) { @routes = Spree::Core::Engine.routes }
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :show, {id: 1}
      expect(response).to have_http_status(:success)
    end
  end
end