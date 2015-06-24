module Babar::Session
  attr_accessor :id

  include Babar::API

  # Start a session with Elephant Talk (24 hour expiration)
  #
  # ==== Attributes
  #
  # * +app_id+ - The Application ID provided by Elephant Talk
  # * +access_token+ - A valid access token provided by Elephant Talk

  def self.start
    app_id = ENV["elephant_talk_id"]
    app_key = ENV["elephant_talk_key"]

    url = "#{Babar.base_url}/CreateSecureSession?password=#{app_key}&promocodeName=#{app_id}"

    response = get(url)

    if response.code == 200
      @id = response.parsed_response
    else
      Babar.error(response)
    end
  end

  def self.id
    @id
  end


end
