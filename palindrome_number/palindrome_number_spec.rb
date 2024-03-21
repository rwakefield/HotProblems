# frozen_string_literal: true

require 'rspec'
require './palindrome_number'

describe PalindromeNumber do
  specify do
    num = 121
    result = described_class.solve!(num: num)
    expect(result).to eq true
  end

  specify do
    num = -121
    result = described_class.solve!(num: num)
    expect(result).to eq false
  end

  specify do
    num = 10
    result = described_class.solve!(num: num)
    expect(result).to eq false
  end

  specify do
    num = 123454321
    result = described_class.solve!(num: num)
    expect(result).to eq true
  end
end
