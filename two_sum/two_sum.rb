# frozen_string_literal: true

# TwoSum problem from leetcode
class TwoSum
  attr_reader :data, :nums

  DIGITS = 2

  def initialize(nums:)
    @nums = nums

    load_data!
  end

  def solve_for(target:)
    data[target].flatten.each_with_object({}) do |item, obj|
      obj[item] = index_for(item: item)
    end.values.flatten
  end

  private

  def load_data!
    combos.each_with_object(@data = {}) do |items, obj|
      sum = sum_from(items: items)

      obj[sum] = [] unless obj[sum]

      obj[sum].push(items)
    end
  end

  def combos
    @combos ||= nums.combination(DIGITS)
  end

  def sum_from(items:)
    items.inject(0, :+)
  end

  def index_for(item:)
    nums.each_index.select { |index| nums[index] == item }
  end
end
