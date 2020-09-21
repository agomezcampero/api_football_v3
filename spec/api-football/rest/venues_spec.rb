require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Venues do
  endpoints = [
    ['venues', '/venues', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end