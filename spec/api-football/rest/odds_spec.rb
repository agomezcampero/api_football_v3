require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Odds do
  endpoints = [
    ['odds', '/odds', { id: 1 }],
    ['mapping', '/odds/mapping', { id: 1 }],
    ['bookmakers', '/odds/bookmakers', { id: 1 }],
    ['bets', '/odds/bets', { id: 1 }]
  ]

  include_examples('mapped endpoints', endpoints)
end