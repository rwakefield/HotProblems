# frozen_string_literal: true

# TwoSum problem from leetcode
class TwoSum
  class << self
    def solve!(nums:, target:)
      data = {}
      nums.each_with_index do |num, index|
        sum_num = target - num
        return [index, data[sum_num]] if data.key?(sum_num)

        data[num] = index
      end
    end
  end
end
