# frozen_string_literal: true

require 'rspec'
require './two_sum'

describe TwoSum do
  let(:nums) { [2, 7, 11, 15] }

  describe '#data' do
    it 'matches expected format' do
      result = described_class.new(nums: nums).data
      expect(result).to match(
        9 => [[2, 7]],
        13 => [[2, 11]],
        17 => [[2, 15]],
        18 => [[7, 11]],
        22 => [[7, 15]],
        26 => [[11, 15]]
      )
    end
  end

  specify do
    nums = [2, 7, 11, 15]
    target = 9
    result = described_class.new(nums: nums).solve_for(target: target)
    expect(result).to match_array([0, 1])
  end

  specify do
    nums = [3, 2, 4]
    target = 6
    result = described_class.new(nums: nums).solve_for(target: target)
    expect(result).to match_array([1, 2])
  end

  specify do
    nums = [3, 3]
    target = 6
    result = described_class.new(nums: nums).solve_for(target: target)
    expect(result).to match_array([0, 1])
  end
end
