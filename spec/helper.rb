require 'simplecov'
SimpleCov.start

require 'api_football_v3'
require 'rspec'
require 'webmock/rspec'

BASE_URL = 'https://www.api-football.com'

def stub_get(path)
  stub_request(:get, BASE_URL + path)
end

def a_get(path)
  a_request(:get, BASE_URL + path)
end

def fixture_path
  File.expand_path('fixtures', __dir__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
