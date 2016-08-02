require 'spec_helper'

describe WeatherParser::WeatherStats do
  let(:expected_day) { WeatherParser::Day.new('1','3','2') }
  let(:non_expected_day) { WeatherParser::Day.new('2','10','2') }
  subject { WeatherParser::WeatherStats.new([expected_day, non_expected_day]) }

  describe '#min_temperature_spread' do
    it 'should return a day with minimal tempreature spread' do
      expect(subject.min_temperature_spread).to eq(expected_day)
    end
  end
end
