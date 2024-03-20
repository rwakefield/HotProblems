# frozen_string_literal: true

require 'rspec'
require './time_conversion'

describe TimeConversion do
  specify do
    result = described_class.solve!(time_string: '12:05:45AM')
    expect(result).to eq('00:05:45')
  end

  specify do
    result = described_class.solve!(time_string: '12:05:45PM')
    expect(result).to eq('12:05:45')
  end

  specify do
    result = described_class.solve!(time_string: '07:05:45PM')
    expect(result).to eq('19:05:45')
  end

  specify do
    result = described_class.solve!(time_string: '07:05:45AM')
    expect(result).to eq('07:05:45')
  end
end
