require 'rails_helper'

RSpec.describe ShortenersController, type: :controller do

  describe "GET #index" do

    render_views

    subject { get :index, params: { link: "9876543" } }

    it "returns http success" do
      expect(response.status).to eq(200)
    end

    it "renders template index" do
      expect(subject).to render_template(:index)
    end

    it "renders form template" do
      expect(subject).to render_template(partial: "_form")
    end

    it "has shortener instance variable" do
      get :index, params: { link: "asdfasdf" }
      expect(assigns(:shortener)).not_to be_nil
    end
  end


  describe "GET #show" do
    #s = Shortener.create! link: "https://google.com"
    #subject { get :show, id: s.code, format: s.id }
    subject { get :show }
    it "returns http success" do
      expect(response.status).to eq(200)
    end

    it "renders template show" do
      #expect(subject).to render_template(:show)
    end
  end



end
