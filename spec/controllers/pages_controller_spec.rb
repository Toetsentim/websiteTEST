require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET documentation" do
    it "returns http success" do
      get :documentation
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET blog" do
    it "returns http success" do
      get :blog
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
