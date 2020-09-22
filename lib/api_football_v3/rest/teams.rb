module ApiFootballV3
  module Rest
    module Teams
      def teams(options = {})
        get('/teams', options)
      end

      def team_statistics(options = {})
        get('/teams/statistics', options)
      end
    end
  end
end
