# frozen_string_literal: true

require 'rspec'
require './add_two_numbers'

describe AddTwoNumbers do
  specify do
    nums1 = [2, 4, 3]
    nums2 = [5, 6, 4]
    result = described_class.solve!(arr1: nums1, arr2: nums2)
    expect(result).to eq([7, 0, 8])
  end

  specify do
    nums1 = [0]
    nums2 = [0]
    result = described_class.solve!(arr1: nums1, arr2: nums2)
    expect(result).to eq([0])
  end

  specify do
    nums1 = [9, 9, 9, 9, 9, 9, 9]
    nums2 = [9, 9, 9, 9]
    result = described_class.solve!(arr1: nums1, arr2: nums2)
    expect(result).to eq([8, 9, 9, 9, 0, 0, 0, 1])
  end
end
