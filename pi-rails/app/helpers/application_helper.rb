module ApplicationHelper
  # Return a 40 elements array for a given Float
  def to_long_a(f)
    ("%.40f" % (f.to_s)).split(//).reject { |n| n == '.' }
  end

  # Compare two floats
  def float_compare(first, second)
    # Split both float to arrays
    _first  = to_long_a(first)
    _second = to_long_a(second)

    # How many digits are equals
    equals  = 0

    # Iterate over digits
    _first.each_with_index do |_, i|
      if _first[i] == _second[i]
        # If both digits are equals, increment
        equals += 1
      else
        # Digits aren't equals, return earliers
        return equals
      end
    end
    # All the digits are equal, return
    equals
  end

end
