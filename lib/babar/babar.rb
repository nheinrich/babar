module Babar

  def self.base_url
    "http://developer.elephanttalkna.com/api"
  end

  def self.error(response)
    error = JSON.parse(response.body)
    error_message = error["ExceptionMessage"]
    raise error_message
  end

end
