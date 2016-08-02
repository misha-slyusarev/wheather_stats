module WeatherParser
  class Day
    attr_accessor :day_of_month, :max_temp, :min_temp

    def initialize(day_of_month, max_temp, min_temp)
      @day_of_month = Integer(day_of_month)
      @max_temp = Integer(max_temp)
      @min_temp = Integer(min_temp)
    end

    def temp_diff
      @max_temp - @min_temp
    end
  end
end
