require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Players do
  endpoints = [
    ['players', '/players', { id: 1 }],
    ['players_seasons', '/players/seasons'],
    ['top_scorers', '/players/topscorers', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end