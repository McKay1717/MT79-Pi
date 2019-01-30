class PiInvCarresImparis
  # Sum as given by the subject, return 0 if n = 0 to avoid division by 0
  def self.serie_inv_carres_imparis(n)
    return 1 / ((2 * n + 1) ** 2) if n.zero?

    n.times.inject(0.0) { |sum, n| sum + 1 / ((2 * n + 1) ** 2).to_f }
  end

  # As given by the subject
  def self.methode_serie_inv_carres_imparis(n)
    Math.sqrt(serie_inv_carres_imparis(n) * 8)
  end
end