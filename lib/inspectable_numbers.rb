require "inspectable_numbers/version"

module InspectableNumbers
  def self.underscore_number(number)
    lhs, rhs = number.to_s.split('.')
    lhs.reverse!
    lhs = lhs.scan(/.{1,3}/).join('_')
    lhs.reverse!
    arr = [lhs, rhs]
    arr.compact!
    arr.join('.')
  end
end

require "inspectable_numbers/core_ext"
