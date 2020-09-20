require 'uri'
require 'net/http'
require 'openssl'

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
      response.read_body
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
  end
end
