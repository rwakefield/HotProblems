# frozen_string_literal: true

require 'rspec'
require './min_max_sum'

describe MinMaxSum do
  specify do
    nums = [1, 3, 5, 7, 9]
    expect do
      described_class.solve!(arr: nums)
    end.to output("16 24\n").to_stdout
  end

  specify do
    nums = [1, 2, 3, 4, 5]
    expect do
      described_class.solve!(arr: nums)
    end.to output("10 14\n").to_stdout
  end
end
