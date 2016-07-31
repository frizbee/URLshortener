require 'rails_helper'

RSpec.describe Shortener, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject {described_class.new(
    link: "https://google.com",
    code: "8hgY68v"
  )}

  it "invalid without link" do
    subject.link = nil
    expect(subject).not_to be_valid
  end

  it "invalid without code" do
    subject.code = nil
    expect(subject).not_to be_valid
  end
end
