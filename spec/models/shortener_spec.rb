require 'rails_helper'

RSpec.describe Shortener, type: :model do

  include ShortenersHelper

  subject {described_class.new(
    link: "https://google.com",
    code: "8hgY68v"
  )}

  it "invalid without link" do
    subject.link = nil
    expect(subject).not_to be_valid
  end

  it "should show code" do
    #subject.code = short_it(subject.link)
    #expect(subject.code.length).to be(7)
  end

end
