# frozen_string_literal: true

# MinMaxSum problem from hackerrank
class MinMaxSum
  def self.solve!(arr:, size: 4)
    arr.combination(size).each_with_object(sums = []) do |items, obj|
      obj.push(items.inject(0, :+))
    end.sort!
    puts "#{sums[0]} #{sums.last}"
  end
end
