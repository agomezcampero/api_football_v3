module ApiFootball
  module Rest
    module Transfers
      def transfers(options = {})
        get('/transfers', options)
      end
    end
  end
end
