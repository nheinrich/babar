module Babar::API

  def self.included(base)
    base.send(:include, ::HTTParty)
    base.send(:format, :json)
    base.http_proxy(ENV["elephant_talk_proxy_host"], ENV["elephant_talk_proxy_port"], ENV["elephant_talk_proxy_user"], ENV["elephant_talk_proxy_pass"])
  end

end
