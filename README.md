# The Football API Ruby Gem

A Ruby interface to [API Football v3](https://www.api-football.com)
This gem won't work git v1 or v2 of the API

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'api-football'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chartmogul-ruby

## Configurations
Configure `api-football` with your API-Key and the URL (depends on whether you are subscribed via RapidApi or ApiSports)

```ruby
@client = ApiFootball::Client.new do |config|
  config.api_key = "YOUR_API_KEY"
  config.base_url = "https://api-football-beta.p.rapidapi.com/" #  or https://v3.football.api-sports.io/
end
```

## Usage
All endpoints can be accessed using `get(endpoint, options)` and a JSON object will be returned

Example:
```ruby
@client.get('/teams', { id: 2323 })
```
Response:
```
{
    "get":"teams",
    "parameters":{
        "id":"2323"
    },
    "errors":[],
    "results":1,
    "paging":{
        "current":1,
        "total":1
    },
    "response":[
        {
            "team":{
                "id":2323,
                "name":"Universidad de Chile",
                "country":"Chile",
                "founded":1927,
                "national":false,
                "logo":"https://media.api-sports.io/football/teams/2323.png"
            },
            "venue":{
                "id":316,
                "name":"Estadio Nacional Julio Mart\u00EDnez Pr\u00E1danos",
                "address":"Avenida Grecia 2001, \u00D1u\u00F1oa",
                "city":"Santiago de Chile",
                "capacity":48665,
                "surface":"grass",
                "image":"https://media.api-sports.io/football/venues/316.png"
            }
        }
    ]
}
```

## Mapped Endpoints
Most endpoints can also be accessed using built in functions. Here you can see how you can call all available endpoints.
For information on options on each endpoint please review the [official documentation](https://www.api-football.com/documentation-beta).

```ruby
@client.coaches                     # /coachs

@client.countries                   # /countries

@client.fixtures                    # /fixutres
@client.live                        # /fixtures?live=all
@client.rounds                      # /fixtures/rounds
@client.head_to_head                # /fixtures/headtohead
@client.fixture_statistics          # /fixtures/statistics
@client.fixture_events              # /fixtures/events
@client.fixture_lineups             # /fixtures/lineups
@client.fixture_player_statistics   # /fixtures/players

@client.leagues                     # /leagues
@client.leagues_seasons             # /leauges/seasons

@client.odds                        # /odds
@client.mapping                     # /odds/mapping
@client.bookmakers                  # /odds/bookmakers
@client.bets                        # /odds/bets

@client.players                     # /players
@client.top_scorers                 # /players/topscorers
@client.players_seasons             # /players/seasons

@client.predictions                 # /predictions

@client.sidelined                   # /sidelined

@client.standings                   # /standings

@client.teams                       # /teams
@client.team_statistics             # /teams/statistics

@client.timezones                   # /timezone

@client.transfers                   # /transfers

@client.trophies                    # /trophies

@client.venues                      # /venues
```

