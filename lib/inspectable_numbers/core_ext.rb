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
