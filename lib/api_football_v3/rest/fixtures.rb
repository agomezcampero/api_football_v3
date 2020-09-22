module ApiFootballV3
  module Rest
    module Fixtures
      def fixtures(options = {})
        get('/fixtures', options)
      end

      def live
        get('/fixtures', { live: 'all' })
      end

      def rounds(options = {})
        get('/fixtures/rounds', options)
      end

      def head_to_head(options = {})
        get('/fixtures/headtohead', options)
      end

      def fixture_statistics(options = {})
        get('/fixtures/statistics', options)
      end

      def fixture_events(options = {})
        get('/fixtures/events', options)
      end

      def fixture_lineups(options = {})
        get('/fixtures/lineups', options)
      end

      def fixture_player_statistics(options = {})
        get('/fixtures/players', options)
      end
    end
  end
end
