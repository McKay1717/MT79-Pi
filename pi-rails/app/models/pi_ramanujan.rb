class PiRamanujan
  # Ramanujan Algorithm, given by subject
  def self.methode_serie_ramanujan(n)
    # Do the sum n times
    1 / n.times.inject(0.0) do |sum, i|
      sum + (2 * Math.sqrt(2) / 9801).to_f * (((factorial(4 * i).to_f * (1103 + 26390 * i).to_f)).to_f / ((factorial(i).to_f ** 4) * (4 * 99) ** (4 * i).to_f).to_f)
    end
  end

  # Ruby doesn't implement a factorial method, here it is
  def self.factorial(n)
    (1..n).reduce(1, :*)
  end
end
