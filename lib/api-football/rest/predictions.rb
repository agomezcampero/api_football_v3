module ApiFootball
  module Rest
    module Predictions
      def predictions(options = {})
        get('/predictions', options)
      end
    end
  end
end
