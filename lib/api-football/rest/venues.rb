module ApiFootball
  module Rest
    module Venues
      def venues(options = {})
        get('/venues', options)
      end
    end
  end
end
