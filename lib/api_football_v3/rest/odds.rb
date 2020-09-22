module ApiFootballV3
  module Rest
    module Odds
      def odds(options = {})
        get('/odds', options)
      end

      def mapping(options = {})
        get('/odds/mapping', options)
      end

      def bookmakers(options = {})
        get('/odds/bookmakers', options)
      end

      def bets(options = {})
        get('/odds/bets', options)
      end
    end
  end
end
