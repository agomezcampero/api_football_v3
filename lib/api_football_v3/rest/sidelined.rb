module ApiFootballV3
  module Rest
    module Sidelined
      def sidelined(options = {})
        get('/sidelined', options)
      end
    end
  end
end
