# frozen_string_literal: true

# PalindromeNumber problem from leetcode
class PalindromeNumber
  class << self
    def solve!(num:)
      return false if num.negative?

      num.digits == num.dup.digits.reverse
    end
  end
end
