module ApiFootball
  module Rest
    module Standings
      def standings(options = {})
        get('/standings', options)
      end
    end
  end
end
