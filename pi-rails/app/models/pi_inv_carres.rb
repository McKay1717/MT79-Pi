class PiInvCarres
  # Sum of 1/n^2
  def self.serie_inv_carres(n)
    (1..n).inject(0.0) { |sum, n| sum + 1 / (n ** 2).to_f }
  end

  # Square root of previous method * 6
  def self.methode_serie_inv_carres(n)
    Math.sqrt(serie_inv_carres(n) * 6)
  end
end