class HomeController < ApplicationController
  def index
    # Generate graph data
    @graph_versus = [
        { name: 'MethodeSerieInvCarres', data: 50.times.map { |n| [n, (PiInvCarres.methode_serie_inv_carres(n) - Math::PI).abs] } },
        { name: 'MethodeSerieInvCarresImparis', data: 50.times.map { |n| [n, (PiInvCarresImparis.methode_serie_inv_carres_imparis(n) - Math::PI).abs] } }
    ]

    # Calculate iterations, start with high values to avoid useless computation
    @i_serie_inv_carres = 22_000
    while PiInvCarres.methode_serie_inv_carres(@i_serie_inv_carres).round(4) != Math::PI.round(4)
      @i_serie_inv_carres += 1
    end

    @i_serie_inv_carres_imparis = 7_000
    while PiInvCarresImparis.methode_serie_inv_carres_imparis(@i_serie_inv_carres_imparis).round(4) != Math::PI.round(4)
      @i_serie_inv_carres_imparis += 1
    end

    # Generate graph data
    data = PiMonteCarlo.tirage(5_000)
    @graph_monte_carlo = [
        { name: 'Monte-Carlo', data: data.select { |n| n if (n[0]**2) + (n[1]**2) <= 1 } },
        { name: 'Monte-Carlo', data: data.select { |n| n if (n[0] ** 2) + (n[1] ** 2) > 1 } }
    ]

    # Generate graph data
    @graph_monte_carlo_convergence = [
        { name: 'Monte-Carlo', data: (1..5_000).map { |n| [n, PiMonteCarlo.montecarlo(n)] } },
        { name: 'Pi', data: (0..5_000).step(100).map { |n| [n, Math::PI] } }
    ]
  end
end