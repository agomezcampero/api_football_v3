require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Timezones do
  endpoints = [
    ['timezones', '/timezone']
  ]

  include_examples('mapped endpoints', endpoints)
end