require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Sidelined do
  endpoints = [
    ['sidelined', '/sidelined', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
