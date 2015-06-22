module Babar::Supplier

  include ::HTTParty
  format :json

  # Retreive a list of service providers

  def self.all
    Babar::Session.start
    url = "#{Babar.base_url}/CustomerPOS/GetListSupplier?sessionId=#{Babar::Session.id}"
    response = get(url).parsed_response
  end

end
