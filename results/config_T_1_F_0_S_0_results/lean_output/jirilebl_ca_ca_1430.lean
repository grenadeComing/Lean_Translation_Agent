import Mathlib

open Filter

/-- Suppose L ∈ ℂ. Show that lim_{z→∞} f(z) = L in the sense of the Riemann sphere if and only if
for every ε > 0 there exists an M such that |f(z)-L| < ε whenever |z| > M. -/
theorem tendsto_atTop_complex_iff_metric (f : ℂ → ℂ) (L : ℂ) :
  Tendsto f atTop (𝓝 L) ↔ ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, M < Complex.abs z → Complex.abs (f z - L) < ε := by sorry
