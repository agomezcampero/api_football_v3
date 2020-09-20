module ApiFootball
  module Rest
    module Coaches
      def coaches(options = {})
        get('/coachs', options)
      end
    end
  end
end
