require 'rails_helper'

RSpec.describe ShortenersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(200)
    end

    it "renders template index" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response.status).to eq(200)
    end

    it "renders template new" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response.status).to eq(200)
    end

    it "renders template show" do
      get :show
      expect(response).to render_template(:show)
    end
  end

end
