require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Trophies do
  endpoints = [
    ['trophies', '/trophies', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
