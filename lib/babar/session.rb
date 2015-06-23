module Babar::Session
  attr_accessor :id

  include ::HTTParty
  format :json


  # Start a session with Elephant Talk (24 hour expiration)
  #
  # ==== Attributes
  #
  # * +app_id+ - The Application ID provided to you by Naviance
  # * +access_token+ - A valid access token see Naviance::AccessToken#get

  def self.start
    # app_id = ENV["elephant_talk_id"]
    # app_key = ENV["elephant_talk_key"]
    raise "WHAT THE FUCKING FUCK"

    app_id = "hunt"
    app_key = "3c78a911-3453-4113-860c-99ca2aa14769"

    url = "#{Babar.base_url}/CreateSecureSession?password=#{app_key}&promocodeName=#{app_id}"

    response = get(url)

    if response.code == 200
      @id = response.parsed_response
    else
      raise "Shit is fucked"
      Babar.error(response)
    end
  end

  def self.id
    @id
  end


end
