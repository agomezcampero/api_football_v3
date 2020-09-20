require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'api-football/error'

module ApiFootball
  module Request
    def get(path, options = {})
      @path = path
      @options = options
      perform_get_request
    end

    private

    def perform_get_request
      response = http.request(request)
      response_body = response.read_body ? JSON.parse(response.read_body) : ''
      raise(error(response.code), response_body) unless response.kind_of?(Net::HTTPSuccess)
      response_body
    end

    def url
      @url ||= URI(@base_url + @path + query_params)
    end

    def query_params
      '?' + URI.encode_www_form(@options)
    end

    def http
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      http
    end

    def request
      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-key"] = @api_key
      request
    end

    def error(code)
      klass = ApiFootball::Error::ERRORS[code.to_i]
      klass ? klass : ApiFootball::Error
    end
  end
end
