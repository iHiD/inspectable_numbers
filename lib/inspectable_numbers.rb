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

class Integer
  def inspect(base=10)
    base == 10 ? InspectableNumbers.underscore_number(self) : 
                 to_s(base)
  end
end

class Float
  def inspect
    InspectableNumbers.underscore_number(self)
  end
end
