module ApiFootballV3
  module Rest
    module Countries
      def countries(options = {})
        get('/countries', options)
      end
    end
  end
end
