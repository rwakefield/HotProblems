# frozen_string_literal: true

require 'rspec'
require './two_sum'

describe TwoSum do
  specify do
    nums = [2, 7, 11, 15]
    target = 9
    result = described_class.solve!(nums: nums, target: target)
    expect(result).to match_array([0, 1])
  end

  specify do
    nums = [3, 2, 4]
    target = 6
    result = described_class.solve!(nums: nums, target: target)
    expect(result).to match_array([1, 2])
  end

  specify do
    nums = [3, 3]
    target = 6
    result = described_class.solve!(nums: nums, target: target)
    expect(result).to match_array([0, 1])
  end
end
