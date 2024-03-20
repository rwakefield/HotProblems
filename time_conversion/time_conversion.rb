# frozen_string_literal: true

# TimeConversion problem from hackerrank
class TimeConversion
  class << self
    attr_accessor :str

    def solve!(time_string:)
      @str = time_string.dup
      if str.delete_suffix!('AM').nil?
        convert_pm!
      elsif str.delete_prefix!('12')
        str.prepend('00')
      end
      str
    end

    private

    def convert_pm!
      str.delete_suffix!('PM')
      time_array = str.split(':')
      time_array[0] = format('%02d', time_array[0].to_i + 12) unless time_array[0] == '12'
      @str = time_array.join(':')
    end
  end
end
