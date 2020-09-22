module ApiFootballV3
  module Rest
    module Transfers
      def transfers(options = {})
        get('/transfers', options)
      end
    end
  end
end
