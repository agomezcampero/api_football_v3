module ApiFootballV3
  module Rest
    module Players
      def players(options = {})
        get('/players', options)
      end

      def top_scorers(options = {})
        get('/players/topscorers', options)
      end

      def players_seasons
        get('/players/seasons')
      end
    end
  end
end
