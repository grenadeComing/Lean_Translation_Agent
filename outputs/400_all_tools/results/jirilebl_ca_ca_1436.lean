import Mathlib

open Filter Metric
open scoped Topology Filter Real

/-- For f : ℂ → ℂ, lim_{z→z0} f(z) = ∞ in the Riemann-sphere sense is equivalent to
`Tendsto (fun z => ‖f z‖) (𝓝 z0) atTop`. This is equivalent to the ε-δ style condition below. -/
theorem tendsto_norm_nhds_iff_lim_at_top (z0 : ℂ) (f : ℂ → ℂ) :
  Tendsto (fun z => ‖f z‖) (𝓝 z0) atTop ↔
    ∀ M > 0, ∃ δ > 0, ∀ z, dist z z0 < δ → M < ‖f z‖ := by sorry
