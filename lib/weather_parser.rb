require "weather_parser/weather_stats"
require "weather_parser/version"
require "weather_parser/parser"
require "weather_parser/day"

module WeatherParser
  def self.handle(file_name)
    parser = WeatherParser::Parser.new
    stats = WeatherParser::WeatherStats.new(parser.process(file_name))
    smallest = stats.min_temperature_spread
    puts "Smallest tempreature spread: #{smallest.temp_diff}"
    puts "Day number: #{smallest.day_of_month}"
  end
end
