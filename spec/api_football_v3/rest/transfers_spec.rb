require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Transfers do
  endpoints = [
    ['transfers', '/transfers', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
