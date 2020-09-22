require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Standings do
  endpoints = [
    ['standings', '/standings', { league: 1, season: 2020 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
