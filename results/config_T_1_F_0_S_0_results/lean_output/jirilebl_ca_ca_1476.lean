import Mathlib

/-- Suppose z0 ∈ ℂ. Show that lim_{z→z0} f(z) = ∞ in the sense of the Riemann sphere iff for every M > 0 there exists δ > 0 such that for all z, 0 < |z - z0| < δ implies |f(z)| > M. -/
theorem complex_tendsto_infty_iff {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => Complex.abs (f z)) (𝓝[≠] z0) atTop ↔
    ∀ M > 0, ∃ δ > 0, ∀ z : ℂ, (0 < Complex.abs (z - z0) ∧ Complex.abs (z - z0) < δ) → Complex.abs (f z) > M := by sorry
