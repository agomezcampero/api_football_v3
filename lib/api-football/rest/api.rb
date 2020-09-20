require 'api-football/rest/coaches'
require 'api-football/rest/countries'
require 'api-football/rest/fixtures'
require 'api-football/rest/leagues'
require 'api-football/rest/odds'
require 'api-football/rest/players'
require 'api-football/rest/predictions'
require 'api-football/rest/sidelined'
require 'api-football/rest/standings'
require 'api-football/rest/teams'
require 'api-football/rest/timezones'
require 'api-football/rest/transfers'
require 'api-football/rest/trophies'
require 'api-football/rest/venues'

module ApiFootball
  module Rest
    module Api
      include ApiFootball::Rest::Coaches
      include ApiFootball::Rest::Countries
      include ApiFootball::Rest::Fixtures
      include ApiFootball::Rest::Leagues
      include ApiFootball::Rest::Odds
      include ApiFootball::Rest::Players
      include ApiFootball::Rest::Predictions
      include ApiFootball::Rest::Sidelined
      include ApiFootball::Rest::Standings
      include ApiFootball::Rest::Teams
      include ApiFootball::Rest::Timezones
      include ApiFootball::Rest::Transfers
      include ApiFootball::Rest::Trophies
      include ApiFootball::Rest::Venues
    end
  end
end
