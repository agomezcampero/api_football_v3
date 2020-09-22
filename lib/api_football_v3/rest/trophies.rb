module ApiFootballV3
  module Rest
    module Trophies
      def trophies(options = {})
        get('/trophies', options)
      end
    end
  end
end
