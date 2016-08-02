require 'spec_helper'

describe WeatherParser::Parser do

  describe '#extract_day' do
    let(:line) {'1  88    59    74 1.6  93 23 1004.5'}
    let(:expected) { WeatherParser::Day.new('1', '88', '59') }

    it 'should extract day information correctly' do
      expect(subject.extract_day(line).day_of_month).to eql(expected.day_of_month)
    end
    it 'should extract tempreature information correctly' do
      expect(subject.extract_day(line).min_temp).to eql(expected.min_temp)
    end
  end
end
