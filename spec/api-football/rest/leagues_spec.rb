require 'helper'
require_relative 'api_shared_examples'

describe ApiFootball::Rest::Leagues do
  endpoints = [
    ['leagues', '/leagues', { id: 1 }],
    ['leagues_seasons', '/leagues/seasons']
  ]

  include_examples('mapped endpoints', endpoints)
end