module ApiFootball
  module Rest
    module Timezones
      def timezones
        get('/timezone')
      end
    end
  end
end
