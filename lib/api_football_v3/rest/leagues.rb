module ApiFootballV3
  module Rest
    module Leagues
      def leagues(options = {})
        get('/leagues', options)
      end

      def leagues_seasons
        get('/leagues/seasons')
      end
    end
  end
end
