module Babar::Customer

  include ::HTTParty
  format :json

  def self.in_coverage_area?(zip_code)
    url = "#{Babar.base_url}/CustomerPOS/GetCoverageArea?sessionId=#{Babar::Session.id}&zipCode=#{zip_code}"
    response = get(url)
    puts "WITHIN COVERAGE AREA: #{response.body}"
    response.body.downcase == "true"
  end

end
