import Mathlib

/-! Suppose z0 ∈ ℂ. Show that lim_{z→ z0} f(z) = ∞ in the sense of the Riemann sphere
    iff for every M > 0 there exists a δ > 0 such that |f(z)| > M whenever |z − z0| < δ. -/
theorem tendsto_norm_atTop_iff (z0 : ℂ) (f : ℂ → ℂ) :
  Tendsto (fun z => ‖f z‖) (𝓝 z0) atTop ↔
    ∀ M > 0, ∃ δ > 0, ∀ z, dist z z0 < δ → M < ‖f z‖ := by
  sorry
