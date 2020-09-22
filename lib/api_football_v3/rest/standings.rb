module ApiFootballV3
  module Rest
    module Standings
      def standings(options = {})
        get('/standings', options)
      end
    end
  end
end
