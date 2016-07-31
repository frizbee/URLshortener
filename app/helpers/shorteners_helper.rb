module ShortenersHelper

  def short_it(value)
    #Railsware approach
    Digest::MD5.hexdigest( value + Time.now.to_i.to_s ).slice(0..6)
  end
end
