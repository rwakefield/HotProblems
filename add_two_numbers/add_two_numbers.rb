# frozen_string_literal: true

# AddTwoNumbers problem from leetcode
class AddTwoNumbers
  class << self
    def solve!(arr1:, arr2:)
      sum = (arr1.reverse.join.to_i + arr2.reverse.join.to_i)
      sum.to_s.split('').map(&:to_i).reverse
    end
  end
end
