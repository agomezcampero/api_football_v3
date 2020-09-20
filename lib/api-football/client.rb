require 'api-football/rest/api'
require 'api-football/request'

module ApiFootball
  class Client
    include ApiFootball::Rest::Api
    include ApiFootball::Request
    attr_accessor :api_key, :base_url

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end
  end
end
