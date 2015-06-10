module Babar::Session
  attr_accessor :id

  include ::HTTParty
  format :json


  # Start a session with Elephant Talk
  #
  # ==== Attributes
  #
  # * +app_id+ - The Application ID provided to you by Naviance
  # * +access_token+ - A valid access token see Naviance::AccessToken#get

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
    @id || "wtf"
  end


end
