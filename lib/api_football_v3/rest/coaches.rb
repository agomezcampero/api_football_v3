module ApiFootballV3
  module Rest
    module Coaches
      def coaches(options = {})
        get('/coachs', options)
      end
    end
  end
end
