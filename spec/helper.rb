require 'simplecov'
SimpleCov.start

require 'api-football'
require 'rspec'
require 'webmock/rspec'

def stub_get(path)
  stub_request(:get, 'https://www.api-football.com' + path)
end

def a_get(path)
  a_request(:get, 'https://www.api-football.com' + path)
end

def fixture_path
  File.expand_path('fixtures', __dir__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
