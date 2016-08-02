require 'rails_helper'

RSpec.feature "make shorten url" do

  include ShortenersHelper

  scenario " allow to make shorten url" do
    visit root_path

    fill_in "Link", with: "https://google.com"

    click_on "Submit"

    expect(page).to have_content("Copy your link")
  end

end
