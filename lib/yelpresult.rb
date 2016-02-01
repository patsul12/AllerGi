require 'yelp/version'
require 'yelp/client'

module Yelp
  @@configure = false
  def self.client
    @client ||= Yelp::Client.new
  end
  def self.configure
    if !@@configure
      Yelp.client.configure do |config|
        config.consumer_key = 'CP3Rez67Zdd3CG5xiEmq-g'
        config.consumer_secret = '8LHiDbp9nr4HnPne0dh6B5800aE'
        config.token = 'nSQva2cpyTR3byzV37fw_7qGlp7EP-H3'
        config.token_secret = 'r0oNnpbMivaTsTyPVS1z-C3USUM'
        @@configure = true
      end
    end
  end
end
