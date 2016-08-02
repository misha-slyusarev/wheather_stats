module WeatherParser
  class Parser
    def process(file_name)
      File.readlines(file_name).drop(2).map do |line|
        extract_day(line)
      end.compact
    end

    def extract_day(line)
      dy, mxt, mnt = line.split[0..2]
      WeatherParser::Day.new(dy, mxt, mnt)
    rescue ArgumentError
    end
  end
end
