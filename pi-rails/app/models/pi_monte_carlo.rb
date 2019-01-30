class PiMonteCarlo
  # Return an array of 2 decimals arrays (Eg: [[0.1, 0.1], [0.2, 0.2], ...])
  def self.tirage(n)
    Array.new(n) { [rand, rand] }
  end

  # Monte-Carlo algorithm
  def self.montecarlo(n)
    # Return 0 if n = 0 to avoid division by 0
    return 0 if n.zero?
    counter = 0

    # Get n random pairs and iterate over
    tirage(n).each do |n|
      # Increase counter if given pair is in circle (Subject circle equation)
      counter += 1 if (n[0]**2) + (n[1]**2) <= 1
    end

    # We're working with Pi/4 and we need Pi
    counter * 4.0 / n
  end
end