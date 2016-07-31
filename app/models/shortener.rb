class Shortener

  include Mongoid::Document
  include Mongoid::Timestamps

  field :link, type: String
  field :code, type: String

  validates_presence_of :link, :code

end
