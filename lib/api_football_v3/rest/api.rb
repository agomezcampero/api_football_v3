require 'api_football_v3/rest/coaches'
require 'api_football_v3/rest/countries'
require 'api_football_v3/rest/fixtures'
require 'api_football_v3/rest/leagues'
require 'api_football_v3/rest/odds'
require 'api_football_v3/rest/players'
require 'api_football_v3/rest/predictions'
require 'api_football_v3/rest/sidelined'
require 'api_football_v3/rest/standings'
require 'api_football_v3/rest/teams'
require 'api_football_v3/rest/timezones'
require 'api_football_v3/rest/transfers'
require 'api_football_v3/rest/trophies'
require 'api_football_v3/rest/venues'

module ApiFootballV3
  module Rest
    module Api
      include ApiFootballV3::Rest::Coaches
      include ApiFootballV3::Rest::Countries
      include ApiFootballV3::Rest::Fixtures
      include ApiFootballV3::Rest::Leagues
      include ApiFootballV3::Rest::Odds
      include ApiFootballV3::Rest::Players
      include ApiFootballV3::Rest::Predictions
      include ApiFootballV3::Rest::Sidelined
      include ApiFootballV3::Rest::Standings
      include ApiFootballV3::Rest::Teams
      include ApiFootballV3::Rest::Timezones
      include ApiFootballV3::Rest::Transfers
      include ApiFootballV3::Rest::Trophies
      include ApiFootballV3::Rest::Venues
    end
  end
end
