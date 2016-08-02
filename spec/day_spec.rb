require 'spec_helper'

describe WeatherParser::Day do

  context 'with non digit initial values' do
    it 'should raise ArgumentError' do
      expect { WeatherParser::Day.new('mo', '1', '2') }.to raise_error(ArgumentError)
    end
  end

  describe '#temp_diff' do
    let (:min) { 2 }
    let (:max) { 3 }

    subject { WeatherParser::Day.new('1', '3', '2')}

    it 'should return temperature difference at that day' do
      expect(subject.temp_diff).to eql(max - min)
    end
  end
end
