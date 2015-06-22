module Babar::Plan

  include ::HTTParty
  format :json

  def find(rate_plan_id)
    url = "#{Babar.base_url}/CustomerPOS/GetRatePlan?sessionId=#{Babar::Session.id}&RateplanItemId=#{rate_plan_id}"
    response = get(url).parsed_response
  end


end
