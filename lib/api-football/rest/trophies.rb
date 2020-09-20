module ApiFootball
  module Rest
    module Trophies
      def trophies(options = {})
        get('/trophies', options)
      end
    end
  end
end
