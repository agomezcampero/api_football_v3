module ApiFootball
  module Rest
    module Teams
      def teams(options = {})
        get('/teams', options)
      end

      def team_statistic(options = {})
        get('/teams/statistics', options)
      end
    end
  end
end
