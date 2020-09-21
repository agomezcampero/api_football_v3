require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Coaches do
  endpoints = [
    ['coaches', '/coachs', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
