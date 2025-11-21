import Mathlib

/-- Suppose z0 ∈ ℂ. Show that lim_{z→z0} f(z) = ∞ in the sense of the Riemann sphere iff for every M > 0 there exists δ > 0 such that |f(z)| > M whenever |z - z0| < δ. -/
theorem riemann_sphere_tendsto_infinity_iff (f : ℂ → ℂ) (z0 : ℂ) :
  Tendsto (fun z : ℂ => ‖f z‖) (nhds z0) atTop ↔
    ∀ M : ℝ, M > 0 → ∃ (δ : ℝ), δ > 0 ∧ ∀ z : ℂ, dist z z0 < δ → ‖f z‖ > M := by sorry
