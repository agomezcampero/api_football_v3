require 'api_football_v3/rest/api'
require 'api_football_v3/request'

module ApiFootballV3
  class Client
    include ApiFootballV3::Rest::Api
    include ApiFootballV3::Request
    attr_accessor :api_key, :base_url

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end
  end
end
