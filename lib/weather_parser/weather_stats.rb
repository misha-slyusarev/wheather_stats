module WeatherParser

  # Common statistics to perform on a range
  # of days
  class WeatherStats
    def initialize(days)
      @days = days
    end

    def min_temperature_spread
      @days.min do |day_a, day_b|
        day_a.temp_diff <=> day_b.temp_diff
      end
    end
  end
end
