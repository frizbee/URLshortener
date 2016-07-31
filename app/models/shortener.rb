class Shortener

  include Mongoid::Document
  include Mongoid::Timestamps

  include ShortenersHelper

  field :link, type: String
  field :code, type: String

  index({ code: 1 }, {unique: true})

  validates_presence_of :link

  before_save :shorten

  def shorten
    # app/helpers/shortener_helper.rb
    self.code = short_it(self.link)
  end

end
