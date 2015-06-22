module Babar::Customer

  include ::HTTParty
  format :json

  # Check for coverage in a specific area
  #
  # ==== Attributes
  #
  # * +zip_code+ - The 5 digit zip code you're checking for coverage

  def self.in_coverage_area?(zip_code)
    Babar::Session.start
    url = "#{Babar.base_url}/CustomerPOS/GetCoverageArea?sessionId=#{Babar::Session.id}&zipCode=#{zip_code}"
    response = get(url)
    response.body.downcase == "true"
  end

end
