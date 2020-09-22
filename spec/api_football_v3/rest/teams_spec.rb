require 'helper'
require_relative 'api_shared_examples'

describe ApiFootballV3::Rest::Teams do
  endpoints = [
    ['teams', '/teams', { id: 1 }],
    ['team_statistics', '/teams/statistics', { id: 1, season: 2020, league: 2 }]
  ]

  include_examples('mapped endpoints', endpoints)
end
